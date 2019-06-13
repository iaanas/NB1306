.class public final Lorg/apache/commons/net/imap/IMAPReply;
.super Ljava/lang/Object;
.source "IMAPReply.java"


# static fields
.field public static final BAD:I = 0x2

.field public static final CONT:I = 0x3

.field private static final IMAP_BAD:Ljava/lang/String; = "BAD"

.field private static final IMAP_CONTINUATION_PREFIX:Ljava/lang/String; = "+"

.field private static final IMAP_NO:Ljava/lang/String; = "NO"

.field private static final IMAP_OK:Ljava/lang/String; = "OK"

.field private static final IMAP_UNTAGGED_PREFIX:Ljava/lang/String; = "* "

.field private static final LITERAL_PATTERN:Ljava/util/regex/Pattern;

.field public static final NO:I = 0x1

.field public static final OK:I = 0x0

.field public static final PARTIAL:I = 0x3

.field private static final TAGGED_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAGGED_RESPONSE:Ljava/lang/String; = "^\\w+ (\\S+).*"

.field private static final UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNTAGGED_RESPONSE:Ljava/lang/String; = "^\\* (\\S+).*"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-string v0, "^\\w+ (\\S+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->TAGGED_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "^\\* (\\S+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "\\{(\\d+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReplyCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->TAGGED_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    return v0
.end method

.method private static getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x3

    return v0

    .line 139
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 140
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "code":Ljava/lang/String;
    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    const/4 v1, 0x0

    return v1

    .line 145
    :cond_1
    const-string v3, "BAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    const/4 v1, 0x2

    return v1

    .line 148
    :cond_2
    const-string v3, "NO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    return v1

    .line 152
    .end local v2    # "code":Ljava/lang/String;
    :cond_3
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected IMAP protocol response from server: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getUntaggedReplyCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    return v0
.end method

.method public static isContinuation(I)Z
    .locals 1
    .param p0, "replyCode"    # I

    .line 171
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isContinuation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .line 86
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSuccess(I)Z
    .locals 1
    .param p0, "replyCode"    # I

    .line 163
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUntagged(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .line 77
    const-string v0, "* "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static literalCount(Ljava/lang/String;)I
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 117
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 120
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
