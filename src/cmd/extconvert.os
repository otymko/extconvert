#Использовать cli
#Использовать "."
// #Использовать "../core"

// Обработчик выполнения команды
//
// Параметры:
//   КомандаПриложения - КомандаПриложения - Выполняемая команда
//
Процедура ВыполнитьКоманду(Знач КомандаПриложения) Экспорт

	КомандаПриложения.ВывестиСправку();

КонецПроцедуры


///////////////////////////////////////////////////////////////////////////////

Процедура ВыполнитьПриложение()

	ИмяПродукта = ПараметрыПриложения.ИмяПродукта();
    
    Приложение = Новый КонсольноеПриложение(ИмяПродукта, "Конвертация внешних файлов 1С в cf/cfe");
    Приложение.Версия("v version", ПараметрыПриложения.ВерсияПродукта());

    Приложение.ДобавитьКоманду("convert", "Конвертация в cf", Новый КомандаConvert);

	Приложение.УстановитьОсновноеДействие(ЭтотОбъект);
    Приложение.Запустить(АргументыКоманднойСтроки);

КонецПроцедуры // ВыполнениеКоманды()

///////////////////////////////////////////////////////

Попытка

    ВыполнитьПриложение();

Исключение

    Сообщить(ОписаниеОшибки());

КонецПопытки;