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
    ArticlesListAPIView,
    GalleryListView,
    GalleryFilterView,
    SitemapView,
    CompressedArticleImageView
)


urlpatterns = [
    path("main/send-requests", SendCreateRequestAPIView.as_view(), name="send-and-create-request"),
    path("main/site-review-list", SiteReviewsListAPIView.as_view(), name="site-reviews-list"),
    path("main/site-review-create", SiteReviewsCreateAPIView.as_view(), name="site-reviews-create"),
    path("<str:lang_code>/main/faq", FAQAPIView.as_view(), name="faq"),
    path("<str:lang_code>/main/params", CreateOwnTourRecView.as_view(), name="params"),
    path("main/create-your-tour", CreateYourTourAPIView.as_view(), name="your-tour"),
    path("<str:lang_code>/article/nav", ArticleNavView.as_view(), name="article-cats"),
    path("article/list/<str:slug>", ArticleListView.as_view(), name="article-nav-list"),
    path("article/detail/<str:slug>", ArticleDetailView.as_view(), name="article-detail"),
    path("<str:lang_code>/main/articles", ArticlesListAPIView.as_view(), name="articles"),
    path("<str:lang_code>/gallery/list", GalleryListView.as_view(), name="gallery-list"),
    path("gallery/detail/<int:gallery_id>", GalleryFilterView.as_view(), name="gallery-list-id"),
    path('compressed-article-image/<int:article_id>', CompressedArticleImageView.as_view(), name='compressed_article_image'),


    # Sitemap
    path("sitemap.xml", SitemapView.as_view(), name="sitemap")
]
