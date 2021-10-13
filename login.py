print ("Hello world222")

import django
print(django.get_version())
print(django._author_)


def logout_request(request):
      logout(request)
      return redirect("")

