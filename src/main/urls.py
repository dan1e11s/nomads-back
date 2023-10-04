from django.urls import path
from .views import (
    SendCreateRequestAPIView,
    SiteReviewsCreateAPIView,
    SiteReviewsListAPIView,
    FAQAPIView,
    CreateOwnTourRecView,
    CreateYourTourAPIView,
    ArticleNavView,
    ArticleListView,
    ArticleDetailView,
    ArticlesListAPIView
)


urlpatterns = [
    path('main/send-requests', SendCreateRequestAPIView.as_view(), name='send-and-create-request'),
    path('main/site-review-list', SiteReviewsListAPIView.as_view(), name='site-reviews-list'),
    path('main/site-review-create', SiteReviewsCreateAPIView.as_view(), name='site-reviews-create'),
    path('main/faq', FAQAPIView.as_view(), name='faq'),
    path('main/params', CreateOwnTourRecView.as_view(), name='params'),
    path('main/create-your-tour', CreateYourTourAPIView.as_view(), name='your-tour'),
    path('article/nav', ArticleNavView.as_view(), name='article-cats'),
    path('article/list/<int:cat_id>', ArticleListView.as_view(), name='article-nav-list'),
    path('article/detail/<int:id>', ArticleDetailView.as_view(), name='article-detail'),
    path("main/articles", ArticlesListAPIView.as_view(), name="articles"),
]