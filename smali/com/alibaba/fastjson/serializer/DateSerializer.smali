.class public Lcom/alibaba/fastjson/serializer/DateSerializer;
.super Ljava/lang/Object;
.source "DateSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateSerializer;->instance:Lcom/alibaba/fastjson/serializer/DateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 21
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v12

    .line 38
    .local v12, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 39
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 130
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 43
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_2

    .line 45
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-class v19, Ljava/util/Date;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 46
    const-string v18, "new Date("

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 47
    check-cast p2, Ljava/util/Date;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const/16 v20, 0x29

    move-wide/from16 v0, v18

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLongAndChar(JC)V

    goto :goto_0

    .line 49
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    const/16 v18, 0x7b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 50
    sget-object v18, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 52
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 53
    const-string v18, "val"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 54
    check-cast p2, Ljava/util/Date;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 55
    const/16 v18, 0x7d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    move-object/from16 v5, p2

    .line 61
    check-cast v5, Ljava/util/Date;

    .line 63
    .local v5, "date":Ljava/util/Date;
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v7

    .line 65
    .local v7, "format":Ljava/text/DateFormat;
    if-nez v7, :cond_3

    .line 66
    new-instance v7, Ljava/text/SimpleDateFormat;

    .end local v7    # "format":Ljava/text/DateFormat;
    sget-object v18, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v7    # "format":Ljava/text/DateFormat;
    :cond_3
    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 69
    .local v14, "text":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v7    # "format":Ljava/text/DateFormat;
    .end local v14    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    .line 74
    .local v15, "time":J
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 75
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 76
    const/16 v18, 0x27

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 81
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 82
    .local v4, "calendar":Ljava/util/Calendar;
    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 85
    .local v17, "year":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v11, v18, 0x1

    .line 86
    .local v11, "month":I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 87
    .local v6, "day":I
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 88
    .local v8, "hour":I
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 89
    .local v10, "minute":I
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 90
    .local v13, "second":I
    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 93
    .local v9, "millis":I
    if-eqz v9, :cond_6

    .line 94
    const-string v18, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 95
    .local v3, "buf":[C
    const/16 v18, 0x17

    move/from16 v0, v18

    invoke-static {v9, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 96
    const/16 v18, 0x13

    move/from16 v0, v18

    invoke-static {v13, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 97
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-static {v10, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 98
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-static {v8, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 99
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-static {v6, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 100
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-static {v11, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 101
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 120
    :goto_2
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 122
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 123
    const/16 v18, 0x27

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_0

    .line 78
    .end local v3    # "buf":[C
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v6    # "day":I
    .end local v8    # "hour":I
    .end local v9    # "millis":I
    .end local v10    # "minute":I
    .end local v11    # "month":I
    .end local v13    # "second":I
    .end local v17    # "year":I
    :cond_5
    const/16 v18, 0x22

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_1

    .line 104
    .restart local v4    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "day":I
    .restart local v8    # "hour":I
    .restart local v9    # "millis":I
    .restart local v10    # "minute":I
    .restart local v11    # "month":I
    .restart local v13    # "second":I
    .restart local v17    # "year":I
    :cond_6
    if-nez v13, :cond_7

    if-nez v10, :cond_7

    if-nez v8, :cond_7

    .line 105
    const-string v18, "0000-00-00"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 106
    .restart local v3    # "buf":[C
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-static {v6, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 107
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-static {v11, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 108
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 110
    .end local v3    # "buf":[C
    :cond_7
    const-string v18, "0000-00-00T00:00:00"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 111
    .restart local v3    # "buf":[C
    const/16 v18, 0x13

    move/from16 v0, v18

    invoke-static {v13, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 112
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-static {v10, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 113
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-static {v8, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 114
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-static {v6, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 115
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-static {v11, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 116
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_2

    .line 125
    :cond_8
    const/16 v18, 0x22

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_0

    .line 128
    .end local v3    # "buf":[C
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v6    # "day":I
    .end local v8    # "hour":I
    .end local v9    # "millis":I
    .end local v10    # "minute":I
    .end local v11    # "month":I
    .end local v13    # "second":I
    .end local v17    # "year":I
    :cond_9
    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_0
.end method
