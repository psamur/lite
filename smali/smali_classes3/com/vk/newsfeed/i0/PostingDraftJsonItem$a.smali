.class public final Lcom/vk/newsfeed/i0/PostingDraftJsonItem$a;
.super Ljava/lang/Object;
.source "PostingDraftJsonItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/newsfeed/i0/PostingDraftJsonItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/vk/newsfeed/i0/PostingDraftJsonItem$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vk/newsfeed/i0/PostingDraftJsonItem$a;

    invoke-direct {v0}, Lcom/vk/newsfeed/i0/PostingDraftJsonItem$a;-><init>()V

    sput-object v0, Lcom/vk/newsfeed/i0/PostingDraftJsonItem$a;->INSTANCE:Lcom/vk/newsfeed/i0/PostingDraftJsonItem$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/newsfeed/i0/PostingDraftJsonItem;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    instance-of v1, p1, Lcom/vtosters/lite/attachments/GeoAttachment;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, p1, Lcom/vtosters/lite/attachments/PendingPhotoAttachment;

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, p1, Lcom/vtosters/lite/attachments/PhotoAttachment;

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, p1, Lcom/vtosters/lite/attachments/AudioAttachment;

    if-eqz v1, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    .line 6
    :cond_3
    instance-of v1, p1, Lcom/vtosters/lite/attachments/PendingVideoAttachment;

    if-eqz v1, :cond_4

    const/4 p1, 0x6

    goto :goto_0

    .line 7
    :cond_4
    instance-of v1, p1, Lcom/vtosters/lite/attachments/VideoAttachment;

    if-eqz v1, :cond_5

    const/4 p1, 0x5

    goto :goto_0

    .line 8
    :cond_5
    instance-of v1, p1, Lcom/vtosters/lite/attachments/PendingDocumentAttachment;

    if-eqz v1, :cond_6

    const/16 p1, 0x8

    goto :goto_0

    .line 9
    :cond_6
    instance-of v1, p1, Lcom/vtosters/lite/attachments/DocumentAttachment;

    if-eqz v1, :cond_7

    const/4 p1, 0x7

    goto :goto_0

    .line 10
    :cond_7
    instance-of v1, p1, Lcom/vtosters/lite/attachments/PollAttachment;

    if-eqz v1, :cond_8

    const/16 p1, 0x9

    goto :goto_0

    .line 11
    :cond_8
    instance-of v1, p1, Lcom/vtosters/lite/attachments/EventAttachment;

    if-eqz v1, :cond_9

    const/16 p1, 0xa

    goto :goto_0

    .line 12
    :cond_9
    instance-of p1, p1, Lcom/vtosters/lite/attachments/MarketAttachment;

    if-eqz p1, :cond_a

    const/16 p1, 0xb

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_0
    const-string v1, "type"

    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
