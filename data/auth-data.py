valid_auth_data = {'email': 'test@protei.ru',
                   'password': 'test',
                   }

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
