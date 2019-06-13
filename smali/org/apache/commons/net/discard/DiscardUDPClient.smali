.class public Lorg/apache/commons/net/discard/DiscardUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "DiscardUDPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x9


# instance fields
.field _sendPacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 48
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_sendPacket:Ljava/net/DatagramPacket;

    .line 49
    return-void
.end method


# virtual methods
.method public send([BILjava/net/InetAddress;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/16 v0, 0x9

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    .line 87
    return-void
.end method

.method public send([BILjava/net/InetAddress;I)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "host"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 67
    iget-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 68
    iget-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 69
    iget-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p4}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 70
    iget-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->_sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 71
    return-void
.end method

.method public send([BLjava/net/InetAddress;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    array-length v0, p1

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    .line 101
    return-void
.end method
