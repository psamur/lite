.class final Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder$b;
.super Ljava/lang/Object;
.source "ArticleAuthorPageItemHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;->a(Lcom/vk/articles/authorpage/g/ArticleAuthorPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;

.field final synthetic b:Lcom/vk/dto/articles/Article;


# direct methods
.method constructor <init>(Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;Lcom/vk/dto/articles/Article;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder$b;->a:Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;

    iput-object p2, p0, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder$b;->b:Lcom/vk/dto/articles/Article;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder$b;->a:Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;

    invoke-static {v0}, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;->d(Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;)Lcom/vk/imageloader/view/VKImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder$b;->b:Lcom/vk/dto/articles/Article;

    invoke-virtual {v1}, Lcom/vk/dto/articles/Article;->z1()Lcom/vk/dto/photo/Photo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder$b;->a:Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;

    invoke-static {v2}, Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;->d(Lcom/vk/articles/authorpage/holders/ArticleAuthorPageItemHolder;)Lcom/vk/imageloader/view/VKImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/dto/photo/Photo;->i(I)Lcom/vk/dto/common/ImageSize;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vk/dto/common/ImageSize;->v1()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/vk/imageloader/view/VKImageView;->a(Ljava/lang/String;)V

    return-void
.end method
