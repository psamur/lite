.class Lcom/vk/libvideo/live/views/chat/ChatInlineView$a;
.super Lio/reactivex/observers/DisposableObserver/DisposableObserver;
.source "ChatInlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/libvideo/live/views/chat/ChatInlineView;->setPresenter(Lcom/vk/libvideo/live/views/chat/ChatContract2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver/DisposableObserver<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vk/libvideo/live/views/chat/ChatInlineView;


# direct methods
.method constructor <init>(Lcom/vk/libvideo/live/views/chat/ChatInlineView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/libvideo/live/views/chat/ChatInlineView$a;->b:Lcom/vk/libvideo/live/views/chat/ChatInlineView;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/vk/libvideo/live/views/chat/ChatInlineView$a;->b:Lcom/vk/libvideo/live/views/chat/ChatInlineView;

    invoke-static {p1}, Lcom/vk/libvideo/live/views/chat/ChatInlineView;->a(Lcom/vk/libvideo/live/views/chat/ChatInlineView;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/vk/libvideo/live/views/chat/ChatInlineView$a;->a(Ljava/lang/Long;)V

    return-void
.end method
