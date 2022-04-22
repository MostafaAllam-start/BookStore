from django.urls import path
from .views import SignupPageView
#It's not being used after configuring allauth app 
urlpatterns = [
    path('signup/', SignupPageView.as_view(), name='signup'),
]