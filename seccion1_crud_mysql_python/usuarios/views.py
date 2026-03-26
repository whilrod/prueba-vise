from django.shortcuts import render, redirect
from .models import Usuario

def listar(request):
    usuarios = Usuario.objects.all().order_by('-id')
    return render(request, 'listar.html', {'usuarios': usuarios})

def crear(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre')
        email = request.POST.get('email')
        Usuario.objects.create(nombre=nombre, email=email)
        return redirect('/')
    return render(request, 'crear.html')

def editar(request, id):
    usuario = Usuario.objects.get(id=id)
    if request.method == 'POST':
        usuario.nombre = request.POST.get('nombre')
        usuario.email = request.POST.get('email')
        usuario.save()
        return redirect('/')
    return render(request, 'editar.html', {'usuario': usuario})

def eliminar(request, id):
    usuario = Usuario.objects.get(id=id)
    if request.method == 'POST':
        usuario.delete()
        return redirect('/')
    return render(request, 'eliminar.html', {'usuario': usuario})