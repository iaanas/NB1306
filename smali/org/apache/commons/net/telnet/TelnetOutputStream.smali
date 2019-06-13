.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field private final __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private final __convertCRtoCRLF:Z

.field private __lastWasCR:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/commons/net/telnet/TelnetClient;

    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__convertCRtoCRLF:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 44
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_closeOutputStream()V

    .line 164
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 157
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    .line 61
    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 70
    if-ne p1, v4, :cond_0

    .line 72
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 73
    monitor-exit v0

    return-void

    .line 82
    :cond_0
    const/16 v2, 0xd

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 102
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 103
    goto :goto_0

    .line 96
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 97
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 98
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 99
    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    if-nez v1, :cond_4

    .line 90
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 92
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 93
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 94
    goto :goto_0

    .line 106
    :cond_5
    if-ne p1, v1, :cond_6

    .line 108
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 109
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    goto :goto_0

    .line 111
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 113
    :goto_0
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    .line 146
    :goto_0
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .local v1, "length":I
    if-lez p3, :cond_0

    .line 147
    add-int/lit8 p3, p2, 0x1

    .end local p2    # "offset":I
    .local p3, "offset":I
    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, p3

    move p3, v1

    goto :goto_0

    .line 149
    :catchall_0
    move-exception p2

    goto :goto_1

    .end local p3    # "offset":I
    .restart local p2    # "offset":I
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    return-void

    .line 149
    :catchall_1
    move-exception p3

    move-object v2, p3

    move p3, p2

    move-object p2, v2

    .end local p2    # "offset":I
    .restart local p3    # "offset":I
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
