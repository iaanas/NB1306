.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FromNetASCIIOutputStream.java"


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 53
    return-void
.end method

.method private __write(I)V
    .locals 3
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    .line 75
    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iput-boolean v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v2, :cond_3

    .line 67
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 68
    iput-boolean v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    iput-boolean v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 72
    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 73
    nop

    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 170
    .end local p0    # "this":Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 173
    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 101
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

    .line 123
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
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

    .line 141
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 149
    .end local p0    # "this":Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, -0x1

    .end local p3    # "length":I
    .local v0, "length":I
    if-lez p3, :cond_1

    .line 150
    add-int/lit8 p3, p2, 0x1

    .end local p2    # "offset":I
    .local p3, "offset":I
    :try_start_1
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p3

    move p3, v0

    goto :goto_0

    .line 152
    .end local p3    # "offset":I
    .restart local p2    # "offset":I
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "length":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
