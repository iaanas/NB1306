.class public Lorg/apache/commons/net/io/CopyStreamAdapter;
.super Ljava/lang/Object;
.source "CopyStreamAdapter.java"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# instance fields
.field private final internalListeners:Lorg/apache/commons/net/util/ListenerList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    .line 51
    return-void
.end method


# virtual methods
.method public addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;

    .line 106
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    .line 107
    return-void
.end method

.method public bytesTransferred(JIJ)V
    .locals 9
    .param p1, "totalBytesTransferred"    # J
    .param p3, "bytesTransferred"    # I
    .param p4, "streamSize"    # J

    .line 91
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 93
    .local v1, "listener":Ljava/util/EventListener;
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/net/io/CopyStreamListener;

    move-object v3, v2

    check-cast v3, Lorg/apache/commons/net/io/CopyStreamListener;

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    .end local v1    # "listener":Ljava/util/EventListener;
    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/commons/net/io/CopyStreamEvent;

    .line 66
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 68
    .local v1, "listener":Ljava/util/EventListener;
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/net/io/CopyStreamListener;

    check-cast v2, Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-interface {v2, p1}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V

    .end local v1    # "listener":Ljava/util/EventListener;
    goto :goto_0

    .line 70
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public removeCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;

    .line 116
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    .line 117
    return-void
.end method
