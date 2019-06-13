.class public Lorg/apache/commons/net/tftp/TFTP;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "TFTP.java"


# static fields
.field public static final ASCII_MODE:I = 0x0

.field public static final BINARY_MODE:I = 0x1

.field public static final DEFAULT_PORT:I = 0x45

.field public static final DEFAULT_TIMEOUT:I = 0x1388

.field public static final IMAGE_MODE:I = 0x1

.field public static final NETASCII_MODE:I = 0x0

.field public static final OCTET_MODE:I = 0x1

.field static final PACKET_SIZE:I = 0x204


# instance fields
.field private __receiveBuffer:[B

.field private __receiveDatagram:Ljava/net/DatagramPacket;

.field private __sendDatagram:Ljava/net/DatagramPacket;

.field _sendBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 129
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/tftp/TFTP;->setDefaultTimeout(I)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveBuffer:[B

    .line 131
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    .line 132
    return-void
.end method

.method public static final getModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 120
    sget-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public final beginBufferedOps()V
    .locals 4

    .line 244
    const/16 v0, 0x204

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveBuffer:[B

    .line 245
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveBuffer:[B

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    .line 247
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->_sendBuffer:[B

    .line 248
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->_sendBuffer:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__sendDatagram:Ljava/net/DatagramPacket;

    .line 250
    return-void
.end method

.method public final bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveBuffer:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 201
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 202
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 204
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    invoke-static {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    .line 205
    .local v0, "newTFTPPacket":Lorg/apache/commons/net/tftp/TFTPPacket;
    const-string v1, "<"

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 206
    return-object v0
.end method

.method public final bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 3
    .param p1, "packet"    # Lorg/apache/commons/net/tftp/TFTPPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 230
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->__sendDatagram:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTP;->_sendBuffer:[B

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;->_newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 231
    return-void
.end method

.method public final discardPackets()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x204

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 148
    .local v0, "datagram":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->getSoTimeout()I

    move-result v1

    .line 149
    .local v1, "to":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/tftp/TFTP;->setSoTimeout(I)V

    .line 154
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    goto :goto_1

    .line 157
    :catch_1
    move-exception v2

    .line 164
    nop

    .line 166
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/tftp/TFTP;->setSoTimeout(I)V

    .line 167
    return-void
.end method

.method public final endBufferedOps()V
    .locals 1

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveBuffer:[B

    .line 258
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__receiveDatagram:Ljava/net/DatagramPacket;

    .line 259
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->_sendBuffer:[B

    .line 260
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->__sendDatagram:Ljava/net/DatagramPacket;

    .line 261
    return-void
.end method

.method public final receive()Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/net/DatagramPacket;

    const/16 v1, 0x204

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 299
    .local v0, "packet":Ljava/net/DatagramPacket;
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 301
    invoke-static {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v1

    .line 302
    .local v1, "newTFTPPacket":Lorg/apache/commons/net/tftp/TFTPPacket;
    const-string v2, "<"

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 303
    return-object v1
.end method

.method public final send(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 2
    .param p1, "packet"    # Lorg/apache/commons/net/tftp/TFTPPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 273
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lorg/apache/commons/net/tftp/TFTPPacket;->newDatagram()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 274
    return-void
.end method

.method protected trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 0
    .param p1, "direction"    # Ljava/lang/String;
    .param p2, "packet"    # Lorg/apache/commons/net/tftp/TFTPPacket;

    .line 316
    return-void
.end method
