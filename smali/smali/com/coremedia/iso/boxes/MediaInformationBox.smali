.class public Lcom/coremedia/iso/boxes/MediaInformationBox;
.super Lb/e/a/AbstractContainerBox;
.source "MediaInformationBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "minf"

    .line 1
    invoke-direct {p0, v0}, Lb/e/a/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Lcom/coremedia/iso/boxes/SampleTableBox;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/e/a/BasicContainer;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 2
    instance-of v2, v1, Lcom/coremedia/iso/boxes/SampleTableBox;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/coremedia/iso/boxes/SampleTableBox;

    return-object v1
.end method
