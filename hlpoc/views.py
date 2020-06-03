from django.template import loader
from django.http import HttpResponse
from django.shortcuts import render, redirect
from hlpoc.forms import SignUpForm
from django.contrib.auth import login as auth_login, authenticate


def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render({}, request))


def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            auth_login(request, user)
            return redirect('index')
    else:
        form = SignUpForm()
    return render(request=request,
                  template_name='users/signup.html',
                  context={'form': form})
