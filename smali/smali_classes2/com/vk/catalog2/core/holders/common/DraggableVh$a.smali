.class final Lcom/vk/catalog2/core/holders/common/DraggableVh$a;
.super Ljava/lang/Object;
.source "DraggableVh.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/catalog2/core/holders/common/DraggableVh;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/catalog2/core/holders/common/DraggableVh;


# direct methods
.method constructor <init>(Lcom/vk/catalog2/core/holders/common/DraggableVh;Landroid/view/LayoutInflater;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/catalog2/core/holders/common/DraggableVh$a;->a:Lcom/vk/catalog2/core/holders/common/DraggableVh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/vk/catalog2/core/holders/common/DraggableVh$a;->a:Lcom/vk/catalog2/core/holders/common/DraggableVh;

    invoke-static {p1}, Lcom/vk/catalog2/core/holders/common/DraggableVh;->a(Lcom/vk/catalog2/core/holders/common/DraggableVh;)Z

    move-result p1

    return p1
.end method
