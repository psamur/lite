.class Lcom/vk/attachpicker/widget/PagerVideoPlayer$b;
.super Ljava/lang/Object;
.source "PagerVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/PagerVideoPlayer;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/attachpicker/widget/PagerVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$b;->a:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$b;->a:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {p1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->b(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V

    .line 2
    new-instance p1, Lcom/vk/attachpicker/widget/PagerVideoPlayer$b$a;

    invoke-direct {p1, p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$b$a;-><init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer$b;)V

    invoke-static {p1}, Lcom/vk/attachpicker/Picker;->a(Ljava/lang/Runnable;)V

    return-void
.end method
