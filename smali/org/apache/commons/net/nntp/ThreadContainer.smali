.class Lorg/apache/commons/net/nntp/ThreadContainer;
.super Ljava/lang/Object;
.source "ThreadContainer.java"


# instance fields
.field child:Lorg/apache/commons/net/nntp/ThreadContainer;

.field next:Lorg/apache/commons/net/nntp/ThreadContainer;

.field parent:Lorg/apache/commons/net/nntp/ThreadContainer;

.field threadable:Lorg/apache/commons/net/nntp/Threadable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z
    .locals 1
    .param p1, "target"    # Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 40
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    if-ne v0, p1, :cond_1

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v0

    return v0
.end method

.method flush()V
    .locals 3

    .line 54
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no threadable in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 60
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v1, :cond_3

    .line 61
    iget-object v2, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_1
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setChild(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 64
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    .line 66
    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 69
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v1, :cond_6

    .line 70
    iget-object v2, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_2
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setNext(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 73
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    .line 75
    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 78
    :cond_7
    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 79
    return-void
.end method

.method reverseChildren()V
    .locals 4

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x0

    .local v0, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "kid":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 89
    .local v2, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v1, :cond_1

    .line 94
    iput-object v0, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 90
    move-object v0, v1

    .line 91
    move-object v1, v2

    .line 92
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    move-object v2, v3

    goto :goto_0

    .line 97
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 100
    iget-object v1, p0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    .line 100
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 104
    .end local v0    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v1    # "kid":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v2    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_2
    return-void
.end method
