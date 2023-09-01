from rest_framework.pagination import PageNumberPagination


class ReviewsListPagination(PageNumberPagination):
    page_size = 4