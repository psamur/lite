.class public final Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TextPostingView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2;->invoke()Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2;


# direct methods
.method constructor <init>(Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2$a;->a:Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2$a;->a:Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2;

    iget-object v0, v0, Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView$postTextGestureDetector$2;->this$0:Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView;

    invoke-virtual {v0}, Lcom/vk/newsfeed/posting/viewpresenter/text/TextPostingView;->getPresenter()Lcom/vk/newsfeed/posting/PostingContracts3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vk/newsfeed/posting/PostingContracts3;->w2()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
