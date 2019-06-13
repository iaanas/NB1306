.class public final enum Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
.super Ljava/lang/Enum;
.source "IMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEARCH_CRITERIA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 452
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 454
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v2, 0x1

    const-string v3, "ANSWERED"

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 459
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v3, 0x2

    const-string v4, "BCC"

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 464
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v4, 0x3

    const-string v5, "BEFORE"

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 469
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v5, 0x4

    const-string v6, "BODY"

    invoke-direct {v0, v6, v5}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 474
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v6, 0x5

    const-string v7, "CC"

    invoke-direct {v0, v7, v6}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 476
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v7, 0x6

    const-string v8, "DELETED"

    invoke-direct {v0, v8, v7}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 478
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/4 v8, 0x7

    const-string v9, "DRAFT"

    invoke-direct {v0, v9, v8}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 480
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v9, 0x8

    const-string v10, "FLAGGED"

    invoke-direct {v0, v10, v9}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 485
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v10, 0x9

    const-string v11, "FROM"

    invoke-direct {v0, v11, v10}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 494
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v11, 0xa

    const-string v12, "HEADER"

    invoke-direct {v0, v12, v11}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 496
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v12, 0xb

    const-string v13, "KEYWORD"

    invoke-direct {v0, v13, v12}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 501
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v13, 0xc

    const-string v14, "LARGER"

    invoke-direct {v0, v14, v13}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 506
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v14, 0xd

    const-string v15, "NEW"

    invoke-direct {v0, v15, v14}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 508
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v15, 0xe

    const-string v14, "NOT"

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 514
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "OLD"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 519
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "ON"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 521
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "OR"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 523
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "RECENT"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 525
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SEEN"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 530
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SENTBEFORE"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 535
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SENTON"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 540
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SENTSINCE"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 545
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SINCE"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 550
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SMALLER"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 555
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "SUBJECT"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 560
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "TEXT"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 565
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "TO"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 570
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UID"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 572
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UNANSWERED"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 574
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UNDELETED"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 576
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UNDRAFT"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 578
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UNFLAGGED"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 580
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UNKEYWORD"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 582
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const-string v14, "UNSEEN"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    .line 449
    const/16 v0, 0x23

    new-array v0, v0, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    sget-object v14, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v14, v0, v1

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    aput-object v1, v0, v13

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 449
    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
    .locals 1

    .line 449
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-object v0
.end method
