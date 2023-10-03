import os
from datetime import datetime
from aiogram import Bot, Dispatcher, types, executor

TOKEN = os.getenv("TOKEN")
CHAT_ID = -1001849790564

bot = Bot(token=TOKEN, parse_mode=types.ParseMode.HTML)
dp = Dispatcher(bot)


async def format_date(date):
    date = datetime.strptime(date, "%Y-%m-%d")

    formatted_date = date.strftime("%d %B %Y г.")

    return formatted_date


async def format_date_1(date):
    date = datetime.strptime(date, "%Y-%m-%d")

    formatted_date = date.strftime("%-d-%B")

    return formatted_date


async def formate_date_2(date):
    date = datetime.strptime(date, "%Y-%m-%d")

    formated_date = date.strftime("%d.%m.%Y")

    return formated_date


async def send_feedback(data):
    if len(data) >= 1:
        msg = (
            f"<b>Новый запрос на обратную связь!!!</b> \n\n"
            f"Имя: <b>{data['name']}</b> \n"
            f"Почта: <b>{data['email']}</b> \n"
            f"Телефон: <b>{data['phone']}</b> \n"
            f"Коментарий: {data['comment']}"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def send_request(data):
    if data:
        budget = data["budget"].split("-")
        msg = (
            f"<b>Новый запрос!!!</b> \n\n"
            f"ФИО: <b>{data['full_name']}</b> \n"
            f"Почта: <b>{data['email']}</b> \n"
            f"Номер телефона: <b>{data['phone']}</b> \n"
            f"Кол-во человек: <b>{data['size']}</b> \n"
            f"Бюджет на человека: ${budget[0]} - ${budget[1]}\n"
            f"Коментарий: {data['message']}"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def new_site_review(data):
    if data:
        msg = (
            f"<b>Новый отзыв на сайте!!!</b> \n\n"
            f"ФИО: <b>{data['firstname']} {data['lastname']}</b> \n"
            f"Оценка: <b>{data['mark']} из 5</b> \n"
            f"Коментарий: {data['text']}"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def send_car_request(data):
    if data:
        msg = (
            f"Заявка на авто: <b>{data['model']}</b> \n"
            f"Дата начала: <b>{await format_date_1(data['datefrom'])}</b> \n"
            f"Дата окончания: <b>{await format_date_1(data['dateto'])}</b> \n"
            f"ФИО: <b>{data['first_name']} {data['last_name']}</b> \n"
            f"Электронная почта: <b>{data['email']}</b> \n"
            f"Номер телефона: <b>{data['phone']}</b> \n"
            f"Комментарии и дополнительная информация: <b>{data['comment']}</b> \n"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def send_tour_review(data):
    if data:
        msg = (
            f"<b>Новый отзыв на тур {data['tour_title']}!!!</b> \n\n"
            f"Имя: <b>{data['name']}</b> \n"
            f"Почта: <b>{data['email']}</b> \n"
            f"Оценка: <b>{int(float(data['rating']))} из 5</b> \n"
            f"Коментарий: {data['comment']}"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def create_own_tour(data, cats, accommodation):
    if data:
        if data["gid"]:
            gid = "Да"
        else:
            gid = "Нет"
        try:
            msg = (
                f"Конструктор поездок\n"
                f"ФИО: <b>{data['full_name']}</b> \n"
                f"Email: <b>{data['email']}</b> \n"
                f"phone: <b>{data['phone']}</b> \n"
                f"Категории: <b>{cats}</b> \n"
                f"Жилье: <b>{accommodation}</b> \n"
                f"Транспорт: <b>{data['transport']}</b> \n"
                f"Питание: <b>{data['meal']}</b> \n"
                f"Кол-во людей: <b>{data['people']}</b> \n"
                f"Дата начала: <b>{await format_date(data['datefrom'])}</b> \n"
                f"Дата окончания: <b>{await format_date(data['dateto'])}</b> \n"
                f"Нужен ли ГИД: <b>{gid}</b> \n"
                f"Комментарии и дополнительная информация: <b>{data['comment']}</b> \n"
            )
        except KeyError:
            msg = (
                f"Конструктор поездок\n"
                f"ФИО: <b>{data['full_name']}</b> \n"
                f"Email: <b>{data['email']}</b> \n"
                f"phone: <b>{data['phone']}</b> \n"
                f"Категории: <b>{cats}</b> \n"
                f"Жилье: <b>{data['accommodation']}</b> \n"
                f"Транспорт: <b>{data['transport']}</b> \n"
                f"Питание: <b>{data['meal']}</b> \n"
                f"Кол-во людей: <b>{data['people']}</b> \n"
                f"Дата начала: <b>{await format_date(data['datefrom'])}</b> \n"
                f"Дата окончания: <b>{await format_date(data['dateto'])}</b> \n"
                f"Комментарии и дополнительная информация: <b>{data['comment']}</b> \n"
            )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def tour_request(data):
    if data:
        try:
            start = data["p_start"]
            price = data["p_price"]
            p_currency = data["p_currency"]
            msg = (
                f"<b>Новый запрос на тур {data['tour_title']}!!!</b> \n\n"
                f"Имя: <b>{data['first_name']}</b> \n"
                f"Фамилия: <b>{data['last_name']}</b> \n"
                f"Адрес электронной: <b>{data['email']}</b> \n"
                f"Телефон: <b>{data['phone']}</b> \n"
                f"Старт: <b>{start.strftime('%b %d, %a').capitalize()}</b> \n"
                f"Цена: <b>{price} {p_currency}</b> \n"
                f"<b>{data['comment']}</b> \n"
            )
        except KeyError:
            msg = (
                f"<b>Новый запрос на тур {data['tour_title']}!!!</b> \n\n"
                f"Имя: <b>{data['first_name']}</b> \n"
                f"Фамилия: <b>{data['last_name']}</b> \n"
                f"Адрес электронной: <b>{data['email']}</b> \n"
                f"Телефон: <b>{data['phone']}</b> \n"
                f"Комментарий и дополнительная информация: <b>{data['comment']}</b> \n"
            )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def create_lead(lead, travelers=False):
    msg = (
        f"<b>Новая покупка!!!</b> \n"
        f"Желаемый тур: <b>{lead['tour_name']}</b> \n"
        f"Желаемый старт: <b>{lead['p_start'].strftime('%d %B %Y г.')}</b> \n"
        f"Желаемая цена: <b>{lead['p_price']} {lead['p_currency']}</b> \n\n"
        f"Имя: <b>{lead['first_name']}</b> \n"
        f"Фамилия: <b>{lead['last_name']}</b> \n"
        f"Адрес электронной: <b>{lead['email']}</b> \n"
        f"Телефон: <b>{lead['phone']}</b> \n"
        f"Дата рождения: <b>{await formate_date_2(lead['dateofborn'])}</b> \n"
        f"Пол: <b>{lead['gender']}</b> \n"
        f"Национальность: <b>{lead['nationality']}</b> \n\n"
        # f"Адрес: <b>{lead['address']}</b> \n"
        # f"Город: <b>{lead['city']}</b> \n\n"
        # f"Имя владельца карты: <b>{lead['c_name']}</b> \n"
        # f"Номер карты: <b>{lead['c_number']}</b> \n"
        # f"Дата истечения срока: <b>{lead['c_expiry_date']}</b> \n"
        # f"CVV: <b>{lead['c_cvv']}</b> \n"
        # f"Страна плательщика: <b>{lead['c_country']}</b> \n\n"
    )
    if travelers:
        for index, traveler in enumerate(travelers, start=1):
            traveler_msg = (
                f"<b>Путешественник - {index}</b> \n"
                f"Имя: <b>{traveler['first_name']}</b> \n"
                f"Фамилия: <b>{traveler['last_name']}</b> \n"
                f"Дата рождения: <b>{await formate_date_2(traveler['dateofborn'])}</b> \n"
                f"Пол: <b>{traveler['gender']}</b> \n"
                f"Национальность: <b>{traveler['nationality']}</b> \n\n"
            )
            msg += traveler_msg

    await bot.send_message(CHAT_ID, msg)
    return True


if __name__ == "__main__":
    executor.start_polling(dp)
