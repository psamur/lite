.class final Lcom/vk/dto/notifications/NotificationItem$Companion$parse$buttonParser$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationItem.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/dto/notifications/NotificationItem$Companion;->a(Lorg/json/JSONObject;Lcom/vk/dto/notifications/NotificationsResponseData;)Lcom/vk/dto/notifications/NotificationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Lorg/json/JSONObject;",
        "Lcom/vk/dto/notifications/NotificationButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $responseData:Lcom/vk/dto/notifications/NotificationsResponseData;


# direct methods
.method constructor <init>(Lcom/vk/dto/notifications/NotificationsResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/dto/notifications/NotificationItem$Companion$parse$buttonParser$1;->$responseData:Lcom/vk/dto/notifications/NotificationsResponseData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/vk/dto/notifications/NotificationButton;
    .locals 2

    .line 1
    sget-object v0, Lcom/vk/dto/notifications/NotificationButton;->f:Lcom/vk/dto/notifications/NotificationButton$b;

    iget-object v1, p0, Lcom/vk/dto/notifications/NotificationItem$Companion$parse$buttonParser$1;->$responseData:Lcom/vk/dto/notifications/NotificationsResponseData;

    invoke-virtual {v0, p1, v1}, Lcom/vk/dto/notifications/NotificationButton$b;->a(Lorg/json/JSONObject;Lcom/vk/dto/notifications/NotificationsResponseData;)Lcom/vk/dto/notifications/NotificationButton;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vk/dto/notifications/NotificationItem$Companion$parse$buttonParser$1;->a(Lorg/json/JSONObject;)Lcom/vk/dto/notifications/NotificationButton;

    move-result-object p1

    return-object p1
.end method
