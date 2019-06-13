.class public Lorg/apache/commons/net/ftp/FTPHTTPClient;
.super Lorg/apache/commons/net/ftp/FTPClient;
.source "FTPHTTPClient.java"


# static fields
.field private static final CRLF:[B


# instance fields
.field private final base64:Lorg/apache/commons/net/util/Base64;

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPassword:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUsername:Ljava/lang/String;

.field private tunnelHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "proxyUser"    # Ljava/lang/String;
    .param p4, "proxyPass"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->base64:Lorg/apache/commons/net/util/Base64;

    .line 52
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    .line 53
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    .line 54
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/BufferedReader;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "connectString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "hostString":Ljava/lang/String;
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    .line 153
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 154
    sget-object v4, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 156
    sget-object v4, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write([B)V

    .line 158
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "auth":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy-Authorization: Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->base64:Lorg/apache/commons/net/util/Base64;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/net/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "header":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 164
    .end local v1    # "auth":Ljava/lang/String;
    .end local v4    # "header":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/apache/commons/net/ftp/FTPHTTPClient;->CRLF:[B

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 170
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 172
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 175
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 176
    .local v4, "size":I
    if-eqz v4, :cond_5

    .line 180
    const/4 v5, 0x0

    .line 181
    .local v5, "code":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 182
    .local v6, "resp":Ljava/lang/String;
    const-string v7, "HTTP/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc

    if-lt v7, v8, :cond_4

    .line 183
    const/16 v7, 0x9

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 188
    const-string v7, "200"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v7, "msg":Ljava/lang/StringBuilder;
    const-string v8, "HTTPTunnelConnector: connection failed\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v8, "Response received from the proxy:\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 193
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v10, "\r\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "line":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 198
    .end local v7    # "msg":Ljava/lang/StringBuilder;
    :cond_3
    return-object v3

    .line 185
    :cond_4
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid response from proxy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 177
    .end local v5    # "code":Ljava/lang/String;
    .end local v6    # "resp":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "No response from proxy"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "command"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method protected _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 12
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getDataConnectionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    .line 94
    .local v0, "isInet6Address":Z
    const/4 v1, 0x0

    .line 96
    .local v1, "passiveHost":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->isUseEPSVwithIPv4()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 97
    .local v2, "attemptEPSV":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->epsv()I

    move-result v5

    const/16 v6, 0xe5

    if-ne v5, v6, :cond_2

    .line 98
    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHost:Ljava/lang/String;

    goto :goto_2

    .line 101
    :cond_2
    if-eqz v0, :cond_3

    .line 102
    return-object v4

    .line 105
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->pasv()I

    move-result v5

    const/16 v6, 0xe3

    if-eq v5, v6, :cond_4

    .line 106
    return-object v4

    .line 108
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socketFactory_:Ljavax/net/SocketFactory;

    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    iget v6, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    invoke-virtual {v3, v5, v6}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    .line 113
    .local v3, "socket":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 114
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 115
    .local v6, "os":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getPassivePort()I

    move-result v7

    invoke-direct {p0, v1, v7, v5, v6}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/BufferedReader;

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getRestartOffset()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->getRestartOffset()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->restart(J)Z

    move-result v7

    if-nez v7, :cond_5

    .line 117
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 118
    return-object v4

    .line 121
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 122
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 123
    return-object v4

    .line 126
    :cond_6
    return-object v3

    .line 90
    .end local v0    # "isInet6Address":Z
    .end local v1    # "passiveHost":Ljava/lang/String;
    .end local v2    # "attemptEPSV":Z
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only passive connection mode supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socketFactory_:Ljavax/net/SocketFactory;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyHost:Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->proxyPort:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socket_:Ljava/net/Socket;

    .line 133
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_input_:Ljava/io/InputStream;

    .line 134
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_output_:Ljava/io/OutputStream;

    .line 137
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_input_:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPHTTPClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/commons/net/ftp/FTPHTTPClient;->tunnelHandshake(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v0, "socketIsReader":Ljava/io/Reader;
    nop

    .line 144
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_(Ljava/io/Reader;)V

    .line 145
    return-void

    .line 139
    .end local v0    # "socketIsReader":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 140
    .restart local v0    # "socketIsReader":Ljava/io/Reader;
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " using port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v2
.end method
