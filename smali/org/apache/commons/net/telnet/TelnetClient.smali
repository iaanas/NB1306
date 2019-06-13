.class public Lorg/apache/commons/net/telnet/TelnetClient;
.super Lorg/apache/commons/net/telnet/Telnet;
.source "TelnetClient.java"


# instance fields
.field private __input:Ljava/io/InputStream;

.field private __output:Ljava/io/OutputStream;

.field private inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

.field protected readerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    const-string v0, "VT100"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 60
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "termtype"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 73
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 74
    return-void
.end method


# virtual methods
.method _closeOutputStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    throw v1
.end method

.method protected _connectAction_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_connectAction_()V

    .line 99
    new-instance v0, Lorg/apache/commons/net/telnet/TelnetInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_input_:Ljava/io/InputStream;

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 100
    .local v0, "tmp":Lorg/apache/commons/net/telnet/TelnetInputStream;
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->_start()V

    .line 110
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 111
    new-instance v1, Lorg/apache/commons/net/telnet/TelnetOutputStream;

    invoke-direct {v1, p0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;-><init>(Lorg/apache/commons/net/telnet/TelnetClient;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 112
    return-void
.end method

.method _flushOutputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 80
    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 0
    .param p1, "opthand"    # Lorg/apache/commons/net/telnet/TelnetOptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V

    .line 272
    return-void
.end method

.method public deleteOptionHandler(I)V
    .locals 0
    .param p1, "optcode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->deleteOptionHandler(I)V

    .line 288
    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 133
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 134
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->disconnect()V

    .line 135
    nop

    .line 136
    return-void

    .line 132
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    .line 133
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    .line 134
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->disconnect()V

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__input:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalOptionState(I)Z
    .locals 1
    .param p1, "option"    # I

    .line 172
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_stateIsWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->__output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReaderThread()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    return v0
.end method

.method public getRemoteOptionState(I)Z
    .locals 1
    .param p1, "option"    # I

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_stateIsDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyInputListener()V
    .locals 2

    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 418
    .local v0, "listener":Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0}, Lorg/apache/commons/net/telnet/TelnetInputListener;->telnetInputAvailable()V

    .line 422
    :cond_0
    return-void

    .line 418
    :catchall_0
    move-exception v1

    goto :goto_0

    .end local v0    # "listener":Lorg/apache/commons/net/telnet/TelnetInputListener;
    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "listener":Lorg/apache/commons/net/telnet/TelnetInputListener;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerInputListener(Lorg/apache/commons/net/telnet/TelnetInputListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/commons/net/telnet/TelnetInputListener;

    monitor-enter p0

    .line 400
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 399
    .end local p0    # "this":Lorg/apache/commons/net/telnet/TelnetClient;
    .end local p1    # "listener":Lorg/apache/commons/net/telnet/TelnetInputListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0
    .param p1, "notifhand"    # Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    .line 322
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V

    .line 323
    return-void
.end method

.method public registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "spystream"    # Ljava/io/OutputStream;

    .line 300
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_registerSpyStream(Ljava/io/OutputStream;)V

    .line 301
    return-void
.end method

.method public sendAYT(J)Z
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendAYT(J)Z

    move-result v0

    return v0
.end method

.method public sendCommand(B)V
    .locals 0
    .param p1, "command"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendCommand(B)V

    .line 255
    return-void
.end method

.method public sendSubnegotiation([I)V
    .locals 2
    .param p1, "message"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 231
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendSubnegotiation([I)V

    .line 235
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero length message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReaderThread(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 363
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    .line 364
    return-void
.end method

.method public stopSpyStream()V
    .locals 0

    .line 309
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_stopSpyStream()V

    .line 310
    return-void
.end method

.method public declared-synchronized unregisterInputListener()V
    .locals 1

    monitor-enter p0

    .line 410
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Lorg/apache/commons/net/telnet/TelnetClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterNotifHandler()V
    .locals 0

    .line 332
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->unregisterNotifHandler()V

    .line 333
    return-void
.end method
