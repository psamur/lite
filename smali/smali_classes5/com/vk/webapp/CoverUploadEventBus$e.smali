.class public final Lcom/vk/webapp/CoverUploadEventBus$e;
.super Lcom/vk/webapp/CoverUploadEventBus$c;
.source "CoverUploadEventBus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/webapp/CoverUploadEventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final b:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/vk/webapp/CoverUploadEventBus$c;-><init>(I)V

    iput p1, p0, Lcom/vk/webapp/CoverUploadEventBus$e;->b:F

    return-void
.end method


# virtual methods
.method public final b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/vk/webapp/CoverUploadEventBus$e;->b:F

    return v0
.end method
