.class public final Lb/h/t/k/DefaultPollVoteController$a$a;
.super Ljava/lang/Object;
.source "DefaultPollVoteController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/t/k/DefaultPollVoteController$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lb/h/t/k/DefaultPollVoteController$a;Ljava/lang/Throwable;Lcom/vk/dto/polls/Poll;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Lb/h/t/k/DefaultPollVoteController$a;->a(Ljava/lang/Throwable;Lcom/vk/dto/polls/Poll;)V

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onVoteError"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
