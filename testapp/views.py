from django.http import JsonResponse


def home(request):
    return JsonResponse({"status": "success", "message": "home page"})


