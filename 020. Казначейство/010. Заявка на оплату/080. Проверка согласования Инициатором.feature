﻿#language: ru

@tree

Функциональность: Проверка согласования с ролью Инициатор

Контекст:
	Дано я подключаю профиль TestClient "Инициатор"	
	
Сценарий: Создание заявки на оплату

	И я закрываю все окна клиентского приложения
* Открытие формы документа
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.ЗаявкаНаОперацию"
	Тогда открылось окно 'Заявки на операции'
	И таблица  "Список" содержит строки:
		| 'Номер'   | 'Состояние согласования' |
		| 'УХ-10000000' | 'Утвержден'         |
