import os
from datetime import datetime
from aiogram import Bot, Dispatcher, types, executor

TOKEN = '6638980154:AAE4UgSLQfMHtU9gItfkdUe_Pn6wTDxktRA'
CHAT_ID = -1001849790564

bot = Bot(token=TOKEN, parse_mode=types.ParseMode.HTML)
dp = Dispatcher(bot)


async def send_feedback(data):
    if len(data) >= 1:
        if data['created_at'] and data['name'] and data['email'] and data['phone'] and data['comment']:
            msg = f"<b>Новый запрос на обратную связь!!!</b> \n\n" \
                  f"Имя: <b>{data['name']}</b> \n" \
                  f"Почта: <b>{data['email']}</b> \n" \
                  f"Телефон: <b>{data['phone']}</b> \n" \
                  f"{data['comment']}"
            await bot.send_message(CHAT_ID, msg)
            return True
        elif not data['comment']:
            msg = f"Имя: <b>Новый запрос на обратную связь!!!</b> \n\n" \
                  f"Имя: <b>{data['name']}</b> \n" \
                  f"Почта: <b>{data['email']}</b> \n" \
                  f"Телефон: <b>{data['phone']}</b> \n"
            await bot.send_message(CHAT_ID, msg)
            return True
        return False
    return False


async def send_request(data):
    if len(data) >= 1:
        if data['first_name'] and data['last_name'] and data['email'] and data['phone'] and data['message'] and data[
            'size']:
            if not data['tour_name']:
                msg = f"<b>Новая заявка!!!</b> \n\n" \
                      f"Имя: <b>{data['first_name']}</b> \n" \
                      f"Фамилия: <b>{data['last_name']}</b> \n" \
                      f"Почта: <b>{data['email']}</b> \n" \
                      f"Номер телефона: <b>{data['phone']}</b> \n" \
                      f"Кол-во человек: <b>{data['size']}</b> \n" \
                      f"{data['message']}"
                await bot.send_message(CHAT_ID, msg)
            else:
                msg = f"<b>Новая заявка на {data['tour_name']}!!!</b> \n\n" \
                      f"Имя: <b>{data['first_name']}</b> \n" \
                      f"Фамилия: <b>{data['last_name']}</b> \n" \
                      f"Почта: <b>{data['email']}</b> \n" \
                      f"Номер телефона: <b>{data['phone']}</b> \n" \
                      f"Кол-во человек: <b>{data['size']}</b> \n" \
                      f"{data['message']}"
                await bot.send_message(CHAT_ID, msg)
            return True
        return False
    return False


async def new_site_review(data):
    if data:
        msg = f"<b>Новый отзыв на сайте!!!</b> \n\n" \
              f"ФИО: <b>{data['full_name']}</b> \n" \
              f"Оценка: <b>{data['mark']} из 5</b> \n" \
              f"Статус: <b>Не проверено</b> \n" \
              f"{data['text']}"
        await bot.send_message(CHAT_ID, msg)
        return True
    return False


async def send_car_request(data):
    pass


if __name__ == '__main__':
    executor.start_polling(dp)
