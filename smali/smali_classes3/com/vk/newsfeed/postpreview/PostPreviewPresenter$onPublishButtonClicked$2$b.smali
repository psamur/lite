.class final Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2$b;
.super Ljava/lang/Object;
.source "PostPreviewPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/vk/dto/newsfeed/entries/Post;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2;


# direct methods
.method constructor <init>(Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2$b;->a:Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/dto/newsfeed/entries/Post;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2$b;->a:Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2;

    iget-object v0, v0, Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2;->this$0:Lcom/vk/newsfeed/postpreview/PostPreviewPresenter;

    invoke-static {v0}, Lcom/vk/newsfeed/postpreview/PostPreviewPresenter;->b(Lcom/vk/newsfeed/postpreview/PostPreviewPresenter;)Lcom/vk/newsfeed/postpreview/PostPreviewContract1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->P1()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/vk/newsfeed/postpreview/PostPreviewContract1;->k0(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/dto/newsfeed/entries/Post;

    invoke-virtual {p0, p1}, Lcom/vk/newsfeed/postpreview/PostPreviewPresenter$onPublishButtonClicked$2$b;->a(Lcom/vk/dto/newsfeed/entries/Post;)V

    return-void
.end method
