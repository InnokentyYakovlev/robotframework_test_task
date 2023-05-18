# Test Case Auth With Valid Data

# Authorization
valid_auth_data = {'email': 'test@protei.ru',
                   'password': 'test',
                   }

# -----------------------------------------------------------------------------------------------------------------
# Test Case Auth With Invalid Data

# 1 Invalid Email and Valid Password
invalid_auth_data1 = {'email': 'test@protei.com',
                      'password': 'test',
                      }
# 2 Valid Email and Invalid Password
invalid_auth_data2 = {'email': 'test@protei.ru',
                      'password': 'tset',
                      }
# 3 Invalid Email and Invalid Password
invalid_auth_data3 = {'email': 'test@protei.com',
                      'password': 'tset',
                      }
# 4 Valid Email and No Password
invalid_auth_data4 = {'email': 'test@protei.ru',
                      'password': '',
                      }
# 5 No Email and Valid Password
invalid_auth_data5 = {'email': '',
                      'password': 'test',
                      }
# 6 No Email and No Password
invalid_auth_data6 = {'email': '',
                      'password': '',
                      }
# 7 Valid Email In Uppercase and Valid Password
invalid_auth_data7 = {'email': 'TEST@PROTEI.RU',
                      'password': 'test',
                      }
# 8 Valid Email In Mixed Case and Valid Password
invalid_auth_data8 = {'email': 'Test@protei.ru',
                      'password': 'test',
                      }
# 9 Valid Email and Valid Password In Mixed Case
invalid_auth_data9 = {'email': 'test@protei.ru',
                      'password': 'TesT',
                      }
# 10 Valid Email and Valid Password In Uppercase
invalid_auth_data10 = {'email': 'test@protei.ru',
                       'password': 'TEST',
                       }

# Попытка сделать Auth With Invalid Data кейворды через цикл
# a = {'invalid_auth_data1': {'email': 'test@protei.com',
#                             'password': 'test',
#                             },
#      'invalid_auth_data2': {'email': 'test@protei.ru',
#                             'password': 'tset',
#                             },
#      'invalid_auth_data3': {'email': 'test@protei.com',
#                             'password': 'tset',
#                             },
#      'invalid_auth_data4': {'email': 'test@protei.ru',
#                             'password': '',
#                             },
#      'invalid_auth_data7': {'email': 'TEST@PROTEI.RU',
#                             'password': 'test',
#                             },
#      'invalid_auth_data8': {'email': 'Test@protei.ru',
#                             'password': 'test',
#                             },
#      'invalid_auth_data9': {'email': 'test@protei.ru',
#                             'password': 'TesT',
#                             },
#      'invalid_auth_data10': {'email': 'test@protei.ru',
#                              'password': 'TEST',
#                              },
#      }

# -----------------------------------------------------------------------------------------------------------------
# Test Case Email Validation Check

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


negative_email_data = {'testprotei.ru',  # Отсутствие @ в email
                       '@protei.ru',  # Email без имени аккаунта
                       'test',  # Email без доменной части
                       }
# С данными негативными значениями тесты проваливаются, выводится ошибка по Email и Паролю
# 'test@proteiru',  # Email без точек в доменной части
# 'te st@protei.ru',  # Email с пробелами в имени аккаунта
# 'test@pro tei.ru',  # Email с пробелами в доменной части
