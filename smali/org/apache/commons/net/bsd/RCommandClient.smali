.class public Lorg/apache/commons/net/bsd/RCommandClient;
.super Lorg/apache/commons/net/bsd/RExecClient;
.source "RCommandClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x202

.field public static final MAX_CLIENT_PORT:I = 0x3ff

.field public static final MIN_CLIENT_PORT:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/net/bsd/RExecClient;-><init>()V

    .line 160
    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/bsd/RCommandClient;->setDefaultPort(I)V

    .line 161
    return-void
.end method


# virtual methods
.method _createErrorStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/16 v0, 0x3ff

    .line 116
    .local v0, "localPort":I
    const/4 v1, 0x0

    .line 118
    .local v1, "server":Ljava/net/ServerSocket;
    const/16 v0, 0x3ff

    :goto_0
    const/16 v2, 0x200

    if-lt v0, v2, :cond_0

    .line 122
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RCommandClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 124
    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/net/SocketException;
    nop

    .line 118
    .end local v2    # "e":Ljava/net/SocketException;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 136
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 137
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_output_:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 138
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 140
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 141
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RCommandClient;->isRemoteVerificationEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/bsd/RCommandClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 145
    :cond_1
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 146
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security violation: unexpected connection attempt by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_2
    :goto_2
    new-instance v3, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v3

    .line 133
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_3
    new-instance v2, Ljava/net/BindException;

    const-string v3, "All ports in use."

    invoke-direct {v2, v3}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 256
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/commons/net/bsd/RCommandClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 257
    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/bsd/RCommandClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 280
    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 341
    const/16 v0, 0x200

    if-lt p4, v0, :cond_0

    const/16 v0, 0x3ff

    if-gt p4, v0, :cond_0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/bsd/RExecClient;->connect(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 345
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/bsd/RCommandClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 233
    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/BindException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/16 v0, 0x3ff

    .line 187
    .local v0, "localPort":I
    const/16 v0, 0x3ff

    :goto_0
    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 191
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v2, p1, p2, p3, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/bsd/RCommandClient;->_socket_:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_2

    .line 197
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/net/SocketException;
    goto :goto_1

    .line 194
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "be":Ljava/net/BindException;
    nop

    .line 187
    .end local v1    # "be":Ljava/net/BindException;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    :cond_0
    :goto_2
    if-lt v0, v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RCommandClient;->_connectAction_()V

    .line 209
    return-void

    .line 205
    :cond_1
    new-instance v1, Ljava/net/BindException;

    const-string v2, "All ports in use or insufficient permssion."

    invoke-direct {v1, v2}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 308
    const/16 v0, 0x200

    if-lt p4, v0, :cond_0

    const/16 v0, 0x3ff

    if-gt p4, v0, :cond_0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/bsd/RExecClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 312
    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localUsername"    # Ljava/lang/String;
    .param p2, "remoteUsername"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RCommandClient;->rcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method public rcommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "localUsername"    # Ljava/lang/String;
    .param p2, "remoteUsername"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "separateErrorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/bsd/RCommandClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 389
    return-void
.end method
