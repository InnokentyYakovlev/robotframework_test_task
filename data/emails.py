# Test Case Email Validation Check

# Positive
positive_email_data = {'111111test111111@protei.ru',  # Email с цифрами в имени аккаунта
                       'test@protei1.ru',  # Email с цифрами в доменной части
                       'test@pro-tei.ru',  # Email с дефисом в доменной части
                       'te_st@protei.ru',  # Email со знаком подчеркивания в имени аккаунта
                       'test@prot_ei.ru',  # Email со знаком подчеркивания в доменной части
                       'te.st@protei.ru',  # Email с точками в имени аккаунта
                       'test@pro.tei.ru',  # Email с несколькими точками в доменной части
                       }
# С данными позитивными значениями тесты проваливаются, выводится ошибка по Email и Паролю
# 'te-st@protei.ru',  # Email с дефисом в имени аккаунта


# Negative
negative_email_data = {'testprotei.ru',  # Отсутствие @ в email
                       '@protei.ru',  # Email без имени аккаунта
                       'test',  # Email без доменной части
                       }
# С данными негативными значениями тесты проваливаются, выводится ошибка по Email и Паролю
# 'test@proteiru',  # Email без точек в доменной части
# 'te st@protei.ru',  # Email с пробелами в имени аккаунта
# 'test@pro tei.ru',  # Email с пробелами в доменной части
