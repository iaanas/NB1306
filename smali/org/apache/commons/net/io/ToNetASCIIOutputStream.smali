.class public final Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ToNetASCIIOutputStream.java"


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized write(I)V
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    const/16 v0, 0xa

    const/16 v1, 0xd

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 71
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 79
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 66
    .end local p1    # "ch":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    .end local p0    # "this":Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
    .end local p1    # "buffer":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :goto_0
    add-int/lit8 v0, p3, -0x1

    .end local p3    # "length":I
    .local v0, "length":I
    if-lez p3, :cond_0

    .line 116
    add-int/lit8 p3, p2, 0x1

    .end local p2    # "offset":I
    .local p3, "offset":I
    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, p3

    move p3, v0

    goto :goto_0

    .line 114
    .end local v0    # "length":I
    .end local p0    # "this":Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
    .end local p1    # "buffer":[B
    .end local p3    # "offset":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 118
    .restart local v0    # "length":I
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    :cond_0
    monitor-exit p0

    return-void
.end method
