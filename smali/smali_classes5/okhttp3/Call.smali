.class public interface abstract Lokhttp3/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Call$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lokhttp3/Callback;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract execute()Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l0()Z
.end method

.method public abstract m0()Lokhttp3/Request;
.end method
