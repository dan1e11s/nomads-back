import os
from datetime import datetime
from aiogram import Bot, Dispatcher, types, executor

TOKEN = "6638980154:AAE4UgSLQfMHtU9gItfkdUe_Pn6wTDxktRA"
CHAT_ID = -1001849790564

bot = Bot(token=TOKEN, parse_mode=types.ParseMode.HTML)
dp = Dispatcher(bot)


async def format_date(date):
    date = datetime.strptime(date, "%Y-%m-%d")

    formatted_date = date.strftime("%d %B %Y г.")

    return formatted_date

async def send_feedback(data):
    if len(data) >= 1:
        if (
            data["created_at"]
            and data["name"]
            and data["email"]
            and data["phone"]
            and data["comment"]
        ):
            msg = (
                f"<b>Новый запрос на обратную связь!!!</b> \n\n"
                f"Имя: <b>{data['name']}</b> \n"
                f"Почта: <b>{data['email']}</b> \n"
                f"Телефон: <b>{data['phone']}</b> \n"
                f"{data['comment']}"
            )
            await bot.send_message(CHAT_ID, msg)
            return True
        elif not data["comment"]:
            msg = (
                f"Имя: <b>Новый запрос на обратную связь!!!</b> \n\n"
                f"Имя: <b>{data['name']}</b> \n"
                f"Почта: <b>{data['email']}</b> \n"
                f"Телефон: <b>{data['phone']}</b> \n"
            )
            await bot.send_message(CHAT_ID, msg)
            return True
        return False
    return False


async def send_request(data):
    if len(data) >= 1:
        if (
            data["first_name"]
            and data["last_name"]
            and data["email"]
            and data["phone"]
            and data["message"]
            and data["size"]
        ):
            if not data["tour_name"]:
                budget = data["budget"].split("-")
                msg = (
                    f"<b>Новая заявка!!!</b> \n\n"
                    f"Имя: <b>{data['first_name']}</b> \n"
                    f"Фамилия: <b>{data['last_name']}</b> \n"
                    f"Почта: <b>{data['email']}</b> \n"
                    f"Номер телефона: <b>{data['phone']}</b> \n"
                    f"Кол-во человек: <b>{data['size']}</b> \n"
                    f"Бюджет на человека: ${budget[0]} - ${budget[1]}\n"
                    f"{data['message']}"
                )
                await bot.send_message(CHAT_ID, msg)
            else:
                msg = (
                    f"<b>Новая заявка на {data['tour_name']}!!!</b> \n\n"
                    f"Имя: <b>{data['first_name']}</b> \n"
                    f"Фамилия: <b>{data['last_name']}</b> \n"
                    f"Почта: <b>{data['email']}</b> \n"
                    f"Номер телефона: <b>{data['phone']}</b> \n"
                    f"Кол-во человек: <b>{data['size']}</b> \n"
                    f"{data['message']}"
                )
                await bot.send_message(CHAT_ID, msg)
            return True
        return False
    return False


async def new_site_review(data):
    if data:
        msg = (
            f"<b>Новый отзыв на сайте!!!</b> \n\n"
            f"ФИО: <b>{data['firstname']} {data['lastname']}</b> \n"
            f"Оценка: <b>{data['mark']} из 5</b> \n"
            f"Статус: <b>Не проверено</b> \n"
            f"{data['text']}"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def send_car_request(data):
    if data:
        msg = (
            f"Заявка на авто: <b>{data['model']}</b> \n"
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
            f"Оценка: <b>{data['rating']} из 5</b> \n"
            f"{data['comment']}"
        )
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def your_tour_create(data):
    if data:
        try:
            msg = (
                f"Название тура: <b>{data['name_tour']}</b> \n"
                f"Категория тура: <b>{data['cat_name']}</b> \n"
                f"Жилье: <b>{data['accommodation']}</b> \n"
                f"Питание: <b>{data['meat']}</b> \n"
                f"Кол-во людей: <b>{data['people']}</b> \n"
                f"Способы связи: <b>{data['method']}</b> \n"
                f"Транспорт: <b>{data['transport_name']}</b> \n"
                f"Дата начала: <b>{await format_date(data['date_start'])}</b> \n"
                f"Дата окончания: <b>{await format_date(data['date_end'])}</b> \n"
                f"Комментарии и дополнительная информация: <b>{data['comment']}</b> \n"
            )
        except KeyError:
            msg = (
                f"Название тура: <b>{data['name_tour']}</b> \n"
                f"Жилье: <b>{data['accommodation']}</b> \n"
                f"Питание: <b>{data['meat']}</b> \n"
                f"Кол-во людей: <b>{data['people']}</b> \n"
                f"Способы связи: <b>{data['method']}</b> \n"
                f"Транспорт: <b>{data['transport_name']}</b> \n"
                f"Дата начала: <b>{await format_date(data['date_start'])}</b> \n"
                f"Дата окончания: <b>{await format_date(data['date_end'])}</b> \n"
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
                f"Комментарий и дополнительная информация: <b>{data['comment']}</b> \n"
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


if __name__ == "__main__":
    executor.start_polling(dp)
