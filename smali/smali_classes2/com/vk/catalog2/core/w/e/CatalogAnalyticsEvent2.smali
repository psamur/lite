.class public final Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;
.super Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent1;
.source "CatalogAnalyticsEvent.kt"


# instance fields
.field private final a:Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent1;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->a:Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;

    iput-boolean p2, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;

    iget-object v0, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->a:Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;

    iget-object v1, p1, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->a:Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->b:Z

    iget-boolean p1, p1, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->b:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->a:Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnUserInteractedWithNotificationEvent(uiBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->a:Lcom/vk/catalog2/core/blocks/UIBlockPlaceholder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUserClosedNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vk/catalog2/core/w/e/CatalogAnalyticsEvent2;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
