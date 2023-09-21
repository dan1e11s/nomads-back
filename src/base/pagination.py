from rest_framework.pagination import PageNumberPagination


class ReviewsListPagination(PageNumberPagination):
    page = 4
    page_size = 4