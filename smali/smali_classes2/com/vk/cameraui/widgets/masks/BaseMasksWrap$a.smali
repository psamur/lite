.class final Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;
.super Ljava/lang/Object;
.source "BaseMasksWrap.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;


# direct methods
.method constructor <init>(Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;->a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;->a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;

    invoke-virtual {p1}, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;->getMasksStatistics()Lcom/vk/masks/MasksAnalytics;

    move-result-object p1

    iget-object v0, p0, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;->a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;

    invoke-virtual {v0}, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;->getSelectedMask()Lcom/vk/dto/masks/Mask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/masks/MasksAnalytics;->a(Lcom/vk/dto/masks/Mask;)V

    .line 2
    iget-object p1, p0, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;->a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;

    invoke-virtual {p1}, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;->getCameraTracker()Lcom/vk/cameraui/utils/CameraTracker;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/vk/stories/analytics/StoryPublishEvent;->CANCEL_MASK_LOADING:Lcom/vk/stories/analytics/StoryPublishEvent;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lcom/vk/cameraui/utils/CameraTracker;->a(Lcom/vk/cameraui/utils/CameraTracker;Lcom/vk/stories/analytics/StoryPublishEvent;Lkotlin/jvm/b/Functions2;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;->a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;

    invoke-virtual {p1, v0}, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;->setSelectedMask(Lcom/vk/dto/masks/Mask;)V

    .line 4
    iget-object p1, p0, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap$a;->a:Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;

    invoke-virtual {p1}, Lcom/vk/cameraui/widgets/masks/BaseMasksWrap;->h()V

    return-void
.end method
