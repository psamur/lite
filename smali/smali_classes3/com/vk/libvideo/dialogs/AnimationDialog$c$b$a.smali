.class final Lcom/vk/libvideo/dialogs/AnimationDialog$c$b$a;
.super Ljava/lang/Object;
.source "AnimationDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/libvideo/dialogs/AnimationDialog$c$b;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/libvideo/dialogs/AnimationDialog$c$b;


# direct methods
.method constructor <init>(Lcom/vk/libvideo/dialogs/AnimationDialog$c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/libvideo/dialogs/AnimationDialog$c$b$a;->a:Lcom/vk/libvideo/dialogs/AnimationDialog$c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vk/libvideo/dialogs/AnimationDialog$c$b$a;->a:Lcom/vk/libvideo/dialogs/AnimationDialog$c$b;

    iget-object v0, v0, Lcom/vk/libvideo/dialogs/AnimationDialog$c$b;->a:Lcom/vk/libvideo/dialogs/AnimationDialog$c;

    iget-boolean v1, v0, Lcom/vk/libvideo/dialogs/AnimationDialog$c;->f:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vk/libvideo/dialogs/AnimationDialog$c;->a:Lcom/vk/libvideo/dialogs/AnimationDialog;

    invoke-virtual {v0}, Lcom/vk/libvideo/dialogs/BaseAnimationDialog;->t()Lcom/vk/media/player/video/MatrixProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vk/media/player/video/MatrixProvider;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vk/extensions/ViewExtKt;->p(Landroid/view/View;)V

    :cond_0
    return-void
.end method
