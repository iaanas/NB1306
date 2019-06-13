.class public Lorg/apache/commons/net/nntp/SimpleNNTPHeader;
.super Ljava/lang/Object;
.source "SimpleNNTPHeader.java"


# instance fields
.field private final __from:Ljava/lang/String;

.field private final __headerFields:Ljava/lang/StringBuilder;

.field private __newsgroupCount:I

.field private final __newsgroups:Ljava/lang/StringBuilder;

.field private final __subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__from:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__subject:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroupCount:I

    .line 70
    return-void
.end method


# virtual methods
.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "headerField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    return-void
.end method

.method public addNewsgroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 80
    iget v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroupCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroupCount:I

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__from:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsgroups()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__subject:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "header":Ljava/lang/StringBuilder;
    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "\nNewsgroups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__newsgroups:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "\nSubject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget-object v2, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 158
    iget-object v2, p0, Lorg/apache/commons/net/nntp/SimpleNNTPHeader;->__headerFields:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
