.class final Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c$a;
.super Ljava/lang/Object;
.source "VideoSubtitlesBottomSheet.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c$a;

    invoke-direct {v0}, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c$a;-><init>()V

    sput-object v0, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c$a;->a:Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet$c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;->c:Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;

    invoke-static {v0}, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;->b(Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;->dismiss()V

    .line 2
    :cond_0
    sget-object v0, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;->c:Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;->a(Lcom/vk/libvideo/bottomsheet/VideoSubtitlesBottomSheet;Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;)V

    return-void
.end method
