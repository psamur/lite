.class public Lcom/rd/b/c/b/ThinWormAnimationValue;
.super Lcom/rd/b/c/b/WormAnimationValue;
.source "ThinWormAnimationValue.java"

# interfaces
.implements Lcom/rd/b/c/Value;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rd/b/c/b/WormAnimationValue;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rd/b/c/b/ThinWormAnimationValue;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/rd/b/c/b/ThinWormAnimationValue;->c:I

    return-void
.end method
