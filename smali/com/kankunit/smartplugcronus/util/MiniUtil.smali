.class public Lcom/kankunit/smartplugcronus/util/MiniUtil;
.super Ljava/lang/Object;
.source "MiniUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare_date(Ljava/util/Date;Ljava/util/Date;)J
    .locals 5
    .param p0, "dt1"    # Ljava/util/Date;
    .param p1, "dt2"    # Ljava/util/Date;

    .prologue
    .line 571
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 575
    :goto_0
    return-wide v1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private static getDelayInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v13, Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;-><init>()V

    .line 346
    .local v13, "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    :try_start_0
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 347
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 348
    .local v6, "cal":Ljava/util/Calendar;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 350
    .local v18, "nowData":Ljava/util/Date;
    const-string v33, "#"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 351
    .local v12, "details":[Ljava/lang/String;
    const/16 v33, 0x7

    aget-object v33, v12, v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 352
    .local v24, "repeat":I
    move/from16 v30, v24

    .line 353
    .local v30, "setRepeat":I
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    .line 354
    const/16 v33, 0x2

    aget-object v2, v12, v33

    .line 355
    .local v2, "allEn":Ljava/lang/String;
    const/16 v33, 0x4

    aget-object v21, v12, v33

    .line 356
    .local v21, "openEn":Ljava/lang/String;
    const/16 v33, 0x6

    aget-object v7, v12, v33

    .line 357
    .local v7, "closeEn":Ljava/lang/String;
    const/16 v33, 0x3

    aget-object v22, v12, v33

    .line 358
    .local v22, "openTime":Ljava/lang/String;
    const/16 v33, 0x5

    aget-object v8, v12, v33

    .line 359
    .local v8, "closeTime":Ljava/lang/String;
    const/16 v33, 0x7

    aget-object v33, v12, v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    aget-object v31, v33, v34

    .line 360
    .local v31, "setTime":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v28

    .line 361
    .local v28, "setDate":Ljava/util/Date;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 362
    .local v23, "opentime":I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 363
    .local v9, "closetime":I
    const/16 v33, 0x270f

    move/from16 v0, v24

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 364
    new-instance v33, Ljava/util/Date;

    invoke-direct/range {v33 .. v33}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 365
    .local v10, "compareTime":J
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    .line 366
    .local v3, "b1":Ljava/math/BigDecimal;
    const/4 v4, 0x0

    .line 367
    .local v4, "b2":Ljava/math/BigDecimal;
    const-string v33, "y"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    const-string v33, "y"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 368
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    add-int v33, v23, v9

    move/from16 v0, v33

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 374
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    :cond_0
    :goto_0
    const/16 v33, 0x0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 375
    .local v5, "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 376
    const/16 v33, 0xc

    add-int v34, v23, v9

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v35

    add-int/lit8 v35, v35, -0x2

    mul-int v34, v34, v35

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 377
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    .line 379
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v10    # "compareTime":J
    :cond_1
    invoke-virtual {v13, v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayState(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenState(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v13, v7}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseState(Ljava/lang/String;)V

    .line 383
    const/16 v33, 0x1

    move/from16 v0, v24

    move/from16 v1, v33

    if-le v0, v1, :cond_2

    .line 384
    add-int/lit8 v24, v24, -0x1

    .line 386
    :cond_2
    move/from16 v0, v23

    if-ge v0, v9, :cond_a

    .line 387
    sub-int v32, v9, v23

    .line 388
    .local v32, "subTime":I
    const/16 v25, 0x0

    .line 389
    .local v25, "repeatIndex":I
    const-string v15, "false"

    .line 390
    .local v15, "hasCloseTime":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 403
    :goto_2
    invoke-virtual {v13, v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasCloseTimeState(Ljava/lang/String;)V

    .line 405
    const-string v16, "false"

    .line 406
    .local v16, "hasOpenTime":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 407
    const-string v33, "y"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 408
    const/16 v33, 0xc

    mul-int v34, v32, v25

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 410
    :cond_3
    const/16 v33, 0xc

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 411
    add-int/lit8 v35, v25, 0x1

    mul-int v34, v34, v35

    .line 410
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 412
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    .line 413
    .local v29, "setOpenDate":Ljava/util/Date;
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v19

    .line 414
    .local v19, "openCompareTime":J
    const-wide/16 v33, 0x0

    cmp-long v33, v19, v33

    if-lez v33, :cond_8

    .line 415
    move-wide/from16 v0, v19

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 416
    const-string v16, "nowDo"

    .line 417
    const-string v15, "waitDo"

    .line 418
    invoke-virtual {v13, v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasCloseTimeState(Ljava/lang/String;)V

    .line 419
    mul-int/lit8 v33, v32, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 424
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasOpenTimeState(Ljava/lang/String;)V

    .line 425
    const/16 v33, 0x270f

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 426
    const-string v33, "9999"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    .line 478
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v12    # "details":[Ljava/lang/String;
    .end local v15    # "hasCloseTime":Ljava/lang/String;
    .end local v16    # "hasOpenTime":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "nowData":Ljava/util/Date;
    .end local v19    # "openCompareTime":J
    .end local v21    # "openEn":Ljava/lang/String;
    .end local v22    # "openTime":Ljava/lang/String;
    .end local v23    # "opentime":I
    .end local v24    # "repeat":I
    .end local v25    # "repeatIndex":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "setDate":Ljava/util/Date;
    .end local v29    # "setOpenDate":Ljava/util/Date;
    .end local v30    # "setRepeat":I
    .end local v31    # "setTime":Ljava/lang/String;
    .end local v32    # "subTime":I
    :goto_4
    return-object v13

    .line 369
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v10    # "compareTime":J
    .restart local v12    # "details":[Ljava/lang/String;
    .restart local v18    # "nowData":Ljava/util/Date;
    .restart local v21    # "openEn":Ljava/lang/String;
    .restart local v22    # "openTime":Ljava/lang/String;
    .restart local v23    # "opentime":I
    .restart local v24    # "repeat":I
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "setDate":Ljava/util/Date;
    .restart local v30    # "setRepeat":I
    .restart local v31    # "setTime":Ljava/lang/String;
    :cond_4
    const-string v33, "y"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 370
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    move/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 371
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    goto/16 :goto_0

    :cond_5
    const-string v33, "y"

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 372
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    invoke-direct {v4, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .restart local v4    # "b2":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 391
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v10    # "compareTime":J
    .restart local v15    # "hasCloseTime":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v25    # "repeatIndex":I
    .restart local v32    # "subTime":I
    :cond_6
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 392
    const/16 v33, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 393
    add-int/lit8 v35, v17, 0x1

    mul-int v34, v34, v35

    .line 392
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 394
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    .line 395
    .local v27, "setCloseDate":Ljava/util/Date;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 396
    .restart local v10    # "compareTime":J
    const-wide/16 v33, 0x0

    cmp-long v33, v10, v33

    if-lez v33, :cond_7

    .line 397
    move/from16 v25, v17

    .line 398
    invoke-virtual {v13, v10, v11}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 399
    const-string v15, "nowDo"

    .line 400
    goto/16 :goto_2

    .line 390
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 421
    .end local v10    # "compareTime":J
    .end local v27    # "setCloseDate":Ljava/util/Date;
    .restart local v16    # "hasOpenTime":Ljava/lang/String;
    .restart local v19    # "openCompareTime":J
    .restart local v29    # "setOpenDate":Ljava/util/Date;
    :cond_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 422
    const-string v16, "finishDo"

    goto/16 :goto_3

    .line 428
    :cond_9
    new-instance v33, Ljava/lang/StringBuilder;

    sub-int v34, v24, v25

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 475
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v12    # "details":[Ljava/lang/String;
    .end local v15    # "hasCloseTime":Ljava/lang/String;
    .end local v16    # "hasOpenTime":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "nowData":Ljava/util/Date;
    .end local v19    # "openCompareTime":J
    .end local v21    # "openEn":Ljava/lang/String;
    .end local v22    # "openTime":Ljava/lang/String;
    .end local v23    # "opentime":I
    .end local v24    # "repeat":I
    .end local v25    # "repeatIndex":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "setDate":Ljava/util/Date;
    .end local v29    # "setOpenDate":Ljava/util/Date;
    .end local v30    # "setRepeat":I
    .end local v31    # "setTime":Ljava/lang/String;
    .end local v32    # "subTime":I
    :catch_0
    move-exception v14

    .line 476
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 431
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v12    # "details":[Ljava/lang/String;
    .restart local v18    # "nowData":Ljava/util/Date;
    .restart local v21    # "openEn":Ljava/lang/String;
    .restart local v22    # "openTime":Ljava/lang/String;
    .restart local v23    # "opentime":I
    .restart local v24    # "repeat":I
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "setDate":Ljava/util/Date;
    .restart local v30    # "setRepeat":I
    .restart local v31    # "setTime":Ljava/lang/String;
    :cond_a
    sub-int v32, v23, v9

    .line 432
    .restart local v32    # "subTime":I
    const/16 v25, 0x0

    .line 433
    .restart local v25    # "repeatIndex":I
    :try_start_1
    const-string v16, "false"

    .line 434
    .restart local v16    # "hasOpenTime":Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    .line 447
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasOpenTimeState(Ljava/lang/String;)V

    .line 449
    const-string v15, "false"

    .line 450
    .restart local v15    # "hasCloseTime":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 451
    const-string v33, "y"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 452
    const/16 v33, 0xc

    mul-int v34, v32, v25

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 454
    :cond_b
    const/16 v33, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 455
    add-int/lit8 v35, v25, 0x1

    mul-int v34, v34, v35

    .line 454
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 456
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    .line 457
    .restart local v27    # "setCloseDate":Ljava/util/Date;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 458
    .restart local v10    # "compareTime":J
    const-wide/16 v33, 0x0

    cmp-long v33, v10, v33

    if-lez v33, :cond_e

    .line 459
    invoke-virtual {v13, v10, v11}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 460
    const-string v15, "nowDo"

    .line 461
    const-string v16, "waitDo"

    .line 462
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasOpenTimeState(Ljava/lang/String;)V

    .line 463
    mul-int/lit8 v33, v32, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 468
    :goto_7
    invoke-virtual {v13, v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasCloseTimeState(Ljava/lang/String;)V

    .line 469
    const/16 v33, 0x270f

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    .line 470
    const-string v33, "9999"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 435
    .end local v10    # "compareTime":J
    .end local v15    # "hasCloseTime":Ljava/lang/String;
    .end local v27    # "setCloseDate":Ljava/util/Date;
    :cond_c
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 436
    const/16 v33, 0xc

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 437
    add-int/lit8 v35, v17, 0x1

    mul-int v34, v34, v35

    .line 436
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 438
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    .line 439
    .restart local v29    # "setOpenDate":Ljava/util/Date;
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v19

    .line 440
    .restart local v19    # "openCompareTime":J
    const-wide/16 v33, 0x0

    cmp-long v33, v19, v33

    if-lez v33, :cond_d

    .line 441
    move/from16 v25, v17

    .line 442
    move-wide/from16 v0, v19

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 443
    const-string v16, "nowDo"

    .line 444
    goto/16 :goto_6

    .line 434
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 465
    .end local v19    # "openCompareTime":J
    .end local v29    # "setOpenDate":Ljava/util/Date;
    .restart local v10    # "compareTime":J
    .restart local v15    # "hasCloseTime":Ljava/lang/String;
    .restart local v27    # "setCloseDate":Ljava/util/Date;
    :cond_e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 466
    const-string v15, "finishDo"

    goto :goto_7

    .line 472
    :cond_f
    new-instance v33, Ljava/lang/StringBuilder;

    sub-int v34, v24, v25

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public static getDelayInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/kankunit/smartplugcronus/model/DelayModel;
    .locals 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "needAdd"    # Z

    .prologue
    .line 17
    new-instance v13, Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;-><init>()V

    .line 19
    .local v13, "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    :try_start_0
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v32, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 21
    .local v6, "cal":Ljava/util/Calendar;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 23
    .local v18, "nowData":Ljava/util/Date;
    const-string v32, "#"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 24
    .local v12, "details":[Ljava/lang/String;
    const/16 v32, 0x7

    aget-object v32, v12, v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 25
    .local v24, "repeat":I
    move/from16 v30, v24

    .line 26
    .local v30, "setRepeat":I
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    .line 27
    const/16 v32, 0x2

    aget-object v2, v12, v32

    .line 28
    .local v2, "allEn":Ljava/lang/String;
    const/16 v32, 0x4

    aget-object v21, v12, v32

    .line 29
    .local v21, "openEn":Ljava/lang/String;
    const/16 v32, 0x6

    aget-object v7, v12, v32

    .line 30
    .local v7, "closeEn":Ljava/lang/String;
    const/16 v32, 0x3

    aget-object v22, v12, v32

    .line 31
    .local v22, "openTime":Ljava/lang/String;
    const/16 v32, 0x5

    aget-object v8, v12, v32

    .line 32
    .local v8, "closeTime":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 33
    .local v23, "opentime":I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 34
    .local v9, "closetime":I
    const/16 v32, 0x7

    aget-object v32, v12, v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v31, v32, v33

    .line 35
    .local v31, "setTime":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v28

    .line 36
    .local v28, "setDate":Ljava/util/Date;
    const/16 v32, 0x270f

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 37
    new-instance v32, Ljava/util/Date;

    invoke-direct/range {v32 .. v32}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 38
    .local v10, "compareTime":J
    new-instance v3, Ljava/math/BigDecimal;

    const-wide/32 v32, 0xea60

    div-long v32, v10, v32

    move-wide/from16 v0, v32

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 39
    .local v3, "b1":Ljava/math/BigDecimal;
    const/4 v4, 0x0

    .line 40
    .local v4, "b2":Ljava/math/BigDecimal;
    const-string v32, "y"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    const-string v32, "y"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 41
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    add-int v32, v23, v9

    move/from16 v0, v32

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 42
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 43
    .local v5, "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 44
    const/16 v32, 0xc

    add-int v33, v23, v9

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    mul-int v33, v33, v34

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 56
    .end local v5    # "b3":Ljava/math/BigDecimal;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    .line 58
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v10    # "compareTime":J
    :cond_1
    invoke-virtual {v13, v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayState(Ljava/lang/String;)V

    .line 59
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenState(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v13, v7}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseState(Ljava/lang/String;)V

    .line 62
    if-nez p2, :cond_5

    const-string v32, "y"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    const-string v32, "y"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 63
    invoke-static/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getDelayInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;

    move-result-object v13

    .line 205
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v12    # "details":[Ljava/lang/String;
    .end local v13    # "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    .end local v18    # "nowData":Ljava/util/Date;
    .end local v21    # "openEn":Ljava/lang/String;
    .end local v22    # "openTime":Ljava/lang/String;
    .end local v23    # "opentime":I
    .end local v24    # "repeat":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "setDate":Ljava/util/Date;
    .end local v30    # "setRepeat":I
    .end local v31    # "setTime":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v13

    .line 45
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v10    # "compareTime":J
    .restart local v12    # "details":[Ljava/lang/String;
    .restart local v13    # "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    .restart local v18    # "nowData":Ljava/util/Date;
    .restart local v21    # "openEn":Ljava/lang/String;
    .restart local v22    # "openTime":Ljava/lang/String;
    .restart local v23    # "opentime":I
    .restart local v24    # "repeat":I
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "setDate":Ljava/util/Date;
    .restart local v30    # "setRepeat":I
    .restart local v31    # "setTime":Ljava/lang/String;
    :cond_3
    const-string v32, "y"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 46
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    move/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 47
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 48
    .restart local v5    # "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 49
    const/16 v32, 0xc

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v23

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v10    # "compareTime":J
    .end local v12    # "details":[Ljava/lang/String;
    .end local v18    # "nowData":Ljava/util/Date;
    .end local v21    # "openEn":Ljava/lang/String;
    .end local v22    # "openTime":Ljava/lang/String;
    .end local v23    # "opentime":I
    .end local v24    # "repeat":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "setDate":Ljava/util/Date;
    .end local v30    # "setRepeat":I
    .end local v31    # "setTime":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 203
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v10    # "compareTime":J
    .restart local v12    # "details":[Ljava/lang/String;
    .restart local v18    # "nowData":Ljava/util/Date;
    .restart local v21    # "openEn":Ljava/lang/String;
    .restart local v22    # "openTime":Ljava/lang/String;
    .restart local v23    # "opentime":I
    .restart local v24    # "repeat":I
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "setDate":Ljava/util/Date;
    .restart local v30    # "setRepeat":I
    .restart local v31    # "setTime":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v32, "y"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 51
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    invoke-direct {v4, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 52
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 53
    .restart local v5    # "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 54
    const/16 v32, 0xc

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v9

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 65
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v10    # "compareTime":J
    :cond_5
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-le v0, v1, :cond_6

    .line 66
    add-int/lit8 v24, v24, -0x1

    .line 68
    :cond_6
    const/16 v25, 0x0

    .line 69
    .local v25, "repeatIndex":I
    const-string v32, "y"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 70
    const-string v16, "false"

    .line 71
    .local v16, "hasOpenTime":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 84
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasOpenTimeState(Ljava/lang/String;)V

    .line 85
    const/16 v32, 0x270f

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 86
    const-string v32, "9999"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 72
    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    const/16 v32, 0xc

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 74
    add-int/lit8 v34, v17, 0x1

    mul-int v33, v33, v34

    .line 73
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 75
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    .line 76
    .local v29, "setOpenDate":Ljava/util/Date;
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v19

    .line 77
    .local v19, "openCompareTime":J
    const-wide/16 v32, 0x0

    cmp-long v32, v19, v32

    if-lez v32, :cond_8

    .line 78
    move/from16 v25, v17

    .line 79
    move-wide/from16 v0, v19

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 80
    const-string v16, "nowDo"

    .line 81
    goto :goto_3

    .line 71
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 88
    .end local v19    # "openCompareTime":J
    .end local v29    # "setOpenDate":Ljava/util/Date;
    :cond_9
    new-instance v32, Ljava/lang/StringBuilder;

    sub-int v33, v24, v25

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 90
    .end local v16    # "hasOpenTime":Ljava/lang/String;
    .end local v17    # "i":I
    :cond_a
    const-string v32, "y"

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 91
    const-string v15, "false"

    .line 92
    .local v15, "hasCloseTime":Ljava/lang/String;
    move/from16 v17, v25

    .restart local v17    # "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 105
    :goto_5
    invoke-virtual {v13, v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayHasCloseTimeState(Ljava/lang/String;)V

    .line 106
    const/16 v32, 0x270f

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 107
    const-string v32, "9999"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_b
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    const/16 v32, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 95
    add-int/lit8 v34, v17, 0x1

    mul-int v33, v33, v34

    .line 94
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 96
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    .line 97
    .local v27, "setCloseDate":Ljava/util/Date;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 98
    .restart local v10    # "compareTime":J
    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-lez v32, :cond_c

    .line 99
    invoke-virtual {v13, v10, v11}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 100
    const-string v15, "nowDo"

    .line 101
    move/from16 v25, v17

    .line 102
    goto :goto_5

    .line 92
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 109
    .end local v10    # "compareTime":J
    .end local v27    # "setCloseDate":Ljava/util/Date;
    :cond_d
    new-instance v32, Ljava/lang/StringBuilder;

    sub-int v33, v24, v25

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getMiniRepeat([Z)Ljava/lang/String;
    .locals 3
    .param p0, "isCheck"    # [Z

    .prologue
    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 618
    const-string v1, "Never"

    :goto_1
    return-object v1

    .line 608
    :cond_0
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_3

    .line 609
    if-nez v0, :cond_1

    .line 610
    const-string v1, "Never"

    goto :goto_1

    .line 611
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 612
    const-string v1, "Unlimited"

    goto :goto_1

    .line 614
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 607
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getNearDelay(Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;
    .locals 35
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v13, Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-direct {v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;-><init>()V

    .line 213
    .local v13, "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    :try_start_0
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 214
    .local v24, "sdf":Ljava/text/SimpleDateFormat;
    const-string v31, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "details":[Ljava/lang/String;
    const/16 v31, 0x7

    aget-object v31, v12, v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 217
    .local v22, "repeat":I
    move/from16 v28, v22

    .line 218
    .local v28, "setRepeat":I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    .line 219
    const/16 v31, 0x2

    aget-object v2, v12, v31

    .line 220
    .local v2, "allEn":Ljava/lang/String;
    const/16 v31, 0x4

    aget-object v19, v12, v31

    .line 221
    .local v19, "openEn":Ljava/lang/String;
    const/16 v31, 0x6

    aget-object v7, v12, v31

    .line 222
    .local v7, "closeEn":Ljava/lang/String;
    const/16 v31, 0x3

    aget-object v20, v12, v31

    .line 223
    .local v20, "openTime":Ljava/lang/String;
    const/16 v31, 0x5

    aget-object v8, v12, v31

    .line 224
    .local v8, "closeTime":Ljava/lang/String;
    const/16 v31, 0x7

    aget-object v31, v12, v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    aget-object v29, v31, v32

    .line 225
    .local v29, "setTime":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 226
    .local v26, "setDate":Ljava/util/Date;
    invoke-virtual {v13, v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayState(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenState(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v13, v7}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseState(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 231
    .local v6, "cal":Ljava/util/Calendar;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 232
    .local v21, "opentime":I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 233
    .local v9, "closetime":I
    const/16 v31, 0x270f

    move/from16 v0, v22

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 234
    new-instance v31, Ljava/util/Date;

    invoke-direct/range {v31 .. v31}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 235
    .local v10, "compareTime":J
    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v31, 0x3e8

    div-long v31, v10, v31

    const-wide/16 v33, 0x3c

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 236
    .local v3, "b1":Ljava/math/BigDecimal;
    const/4 v4, 0x0

    .line 237
    .local v4, "b2":Ljava/math/BigDecimal;
    const-string v31, "y"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 238
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    add-int v31, v21, v9

    move/from16 v0, v31

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 239
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 240
    .local v5, "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 241
    const/16 v31, 0xc

    add-int v32, v21, v9

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v33

    mul-int v32, v32, v33

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 253
    .end local v5    # "b3":Ljava/math/BigDecimal;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 256
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v10    # "compareTime":J
    :cond_1
    const/16 v31, 0x1

    move/from16 v0, v22

    move/from16 v1, v31

    if-le v0, v1, :cond_2

    .line 257
    add-int/lit8 v22, v22, -0x1

    .line 259
    :cond_2
    move/from16 v0, v21

    if-ge v0, v9, :cond_a

    .line 260
    sub-int v30, v9, v21

    .line 261
    .local v30, "subTime":I
    const/16 v23, 0x0

    .line 262
    .local v23, "repeatIndex":I
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 263
    .local v16, "nowData":Ljava/util/Date;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 264
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v22

    if-le v15, v0, :cond_7

    .line 278
    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 279
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 280
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 281
    const/16 v31, 0xc

    mul-int v32, v30, v23

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 283
    :cond_3
    const/16 v31, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 284
    add-int/lit8 v33, v23, 0x1

    mul-int v32, v32, v33

    .line 283
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 285
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    .line 286
    .local v27, "setOpenDate":Ljava/util/Date;
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v17

    .line 287
    .local v17, "openCompareTime":J
    const-wide/16 v31, 0x0

    cmp-long v31, v17, v31

    if-lez v31, :cond_4

    .line 288
    move-wide/from16 v0, v17

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 289
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenRealTime(Ljava/lang/String;)V

    .line 291
    :cond_4
    const/16 v31, 0x270f

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 292
    const-string v31, "9999"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    .line 338
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v12    # "details":[Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "nowData":Ljava/util/Date;
    .end local v17    # "openCompareTime":J
    .end local v19    # "openEn":Ljava/lang/String;
    .end local v20    # "openTime":Ljava/lang/String;
    .end local v21    # "opentime":I
    .end local v22    # "repeat":I
    .end local v23    # "repeatIndex":I
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v26    # "setDate":Ljava/util/Date;
    .end local v27    # "setOpenDate":Ljava/util/Date;
    .end local v28    # "setRepeat":I
    .end local v29    # "setTime":Ljava/lang/String;
    .end local v30    # "subTime":I
    :goto_3
    return-object v13

    .line 242
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v10    # "compareTime":J
    .restart local v12    # "details":[Ljava/lang/String;
    .restart local v19    # "openEn":Ljava/lang/String;
    .restart local v20    # "openTime":Ljava/lang/String;
    .restart local v21    # "opentime":I
    .restart local v22    # "repeat":I
    .restart local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "setDate":Ljava/util/Date;
    .restart local v28    # "setRepeat":I
    .restart local v29    # "setTime":Ljava/lang/String;
    :cond_5
    const-string v31, "y"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 243
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 244
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 245
    .restart local v5    # "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 246
    const/16 v31, 0xc

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v32

    mul-int v32, v32, v21

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 335
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v10    # "compareTime":J
    .end local v12    # "details":[Ljava/lang/String;
    .end local v19    # "openEn":Ljava/lang/String;
    .end local v20    # "openTime":Ljava/lang/String;
    .end local v21    # "opentime":I
    .end local v22    # "repeat":I
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v26    # "setDate":Ljava/util/Date;
    .end local v28    # "setRepeat":I
    .end local v29    # "setTime":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 336
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 247
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v10    # "compareTime":J
    .restart local v12    # "details":[Ljava/lang/String;
    .restart local v19    # "openEn":Ljava/lang/String;
    .restart local v20    # "openTime":Ljava/lang/String;
    .restart local v21    # "opentime":I
    .restart local v22    # "repeat":I
    .restart local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "setDate":Ljava/util/Date;
    .restart local v28    # "setRepeat":I
    .restart local v29    # "setTime":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v31, "y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 248
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    invoke-direct {v4, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 249
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 250
    .restart local v5    # "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 251
    const/16 v31, 0xc

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v32

    mul-int v32, v32, v9

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 265
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v10    # "compareTime":J
    .restart local v15    # "i":I
    .restart local v16    # "nowData":Ljava/util/Date;
    .restart local v23    # "repeatIndex":I
    .restart local v30    # "subTime":I
    :cond_7
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 266
    const/16 v31, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 267
    add-int/lit8 v33, v15, 0x1

    mul-int v32, v32, v33

    .line 266
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 268
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v25

    .line 269
    .local v25, "setCloseDate":Ljava/util/Date;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 270
    .restart local v10    # "compareTime":J
    const-wide/16 v31, 0x0

    cmp-long v31, v10, v31

    if-lez v31, :cond_8

    .line 271
    move/from16 v23, v15

    .line 272
    invoke-virtual {v13, v10, v11}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 273
    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseRealTime(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 264
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 294
    .end local v10    # "compareTime":J
    .end local v25    # "setCloseDate":Ljava/util/Date;
    .restart local v17    # "openCompareTime":J
    .restart local v27    # "setOpenDate":Ljava/util/Date;
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    sub-int v32, v22, v23

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 297
    .end local v15    # "i":I
    .end local v16    # "nowData":Ljava/util/Date;
    .end local v17    # "openCompareTime":J
    .end local v23    # "repeatIndex":I
    .end local v27    # "setOpenDate":Ljava/util/Date;
    .end local v30    # "subTime":I
    :cond_a
    sub-int v30, v21, v9

    .line 298
    .restart local v30    # "subTime":I
    const/16 v23, 0x0

    .line 299
    .restart local v23    # "repeatIndex":I
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 301
    .restart local v16    # "nowData":Ljava/util/Date;
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 302
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_4
    move/from16 v0, v22

    if-le v15, v0, :cond_d

    .line 316
    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    .line 317
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 318
    const-string v31, "y"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 319
    const/16 v31, 0xc

    mul-int v32, v30, v23

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 321
    :cond_b
    const/16 v31, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 322
    add-int/lit8 v33, v23, 0x1

    mul-int v32, v32, v33

    .line 321
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 323
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v25

    .line 324
    .restart local v25    # "setCloseDate":Ljava/util/Date;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 325
    .restart local v10    # "compareTime":J
    const-wide/16 v31, 0x0

    cmp-long v31, v10, v31

    if-lez v31, :cond_c

    .line 326
    invoke-virtual {v13, v10, v11}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 327
    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseRealTime(Ljava/lang/String;)V

    .line 329
    :cond_c
    const/16 v31, 0x270f

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 330
    const-string v31, "9999"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 303
    .end local v10    # "compareTime":J
    .end local v25    # "setCloseDate":Ljava/util/Date;
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 304
    const/16 v31, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 305
    add-int/lit8 v33, v15, 0x1

    mul-int v32, v32, v33

    .line 304
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 306
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    .line 307
    .restart local v27    # "setOpenDate":Ljava/util/Date;
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v17

    .line 308
    .restart local v17    # "openCompareTime":J
    const-wide/16 v31, 0x0

    cmp-long v31, v17, v31

    if-lez v31, :cond_e

    .line 309
    move/from16 v23, v15

    .line 310
    move-wide/from16 v0, v17

    invoke-virtual {v13, v0, v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenLongTime(J)V

    .line 311
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenRealTime(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 302
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 332
    .end local v17    # "openCompareTime":J
    .end local v27    # "setOpenDate":Ljava/util/Date;
    .restart local v10    # "compareTime":J
    .restart local v25    # "setCloseDate":Ljava/util/Date;
    :cond_f
    new-instance v31, Ljava/lang/StringBuilder;

    sub-int v32, v22, v23

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static getNearTime(Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;
    .locals 31
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 484
    new-instance v15, Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-direct {v15}, Lcom/kankunit/smartplugcronus/model/DelayModel;-><init>()V

    .line 486
    .local v15, "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    :try_start_0
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v28, "yyyy-MM-dd-HH:mm:ss"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 487
    .local v23, "sdf":Ljava/text/SimpleDateFormat;
    const-string v28, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 489
    .local v14, "details":[Ljava/lang/String;
    const/16 v28, 0x7

    aget-object v28, v14, v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 490
    .local v22, "repeat":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayRepeat(Ljava/lang/String;)V

    .line 491
    const/16 v28, 0x2

    aget-object v2, v14, v28

    .line 492
    .local v2, "allEn":Ljava/lang/String;
    const/16 v28, 0x4

    aget-object v19, v14, v28

    .line 493
    .local v19, "openEn":Ljava/lang/String;
    const/16 v28, 0x6

    aget-object v7, v14, v28

    .line 494
    .local v7, "closeEn":Ljava/lang/String;
    const/16 v28, 0x3

    aget-object v20, v14, v28

    .line 495
    .local v20, "openTime":Ljava/lang/String;
    const/16 v28, 0x5

    aget-object v8, v14, v28

    .line 496
    .local v8, "closeTime":Ljava/lang/String;
    const/16 v28, 0x7

    aget-object v28, v14, v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v27, v28, v29

    .line 497
    .local v27, "setTime":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    .line 498
    .local v25, "setDate":Ljava/util/Date;
    invoke-virtual {v15, v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayState(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayOpenState(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v15, v7}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseState(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 503
    .local v6, "cal":Ljava/util/Calendar;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 504
    .local v21, "opentime":I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 505
    .local v9, "closetime":I
    const/16 v28, 0x270f

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 506
    new-instance v28, Ljava/util/Date;

    invoke-direct/range {v28 .. v28}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v12

    .line 507
    .local v12, "compareTime":J
    new-instance v3, Ljava/math/BigDecimal;

    const-wide/32 v28, 0xea60

    div-long v28, v12, v28

    move-wide/from16 v0, v28

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 508
    .local v3, "b1":Ljava/math/BigDecimal;
    const/4 v4, 0x0

    .line 509
    .local v4, "b2":Ljava/math/BigDecimal;
    const-string v28, "y"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    const-string v28, "y"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 510
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    add-int v28, v21, v9

    move/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 511
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v28, 0x0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 512
    .local v5, "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 513
    const/16 v28, 0xc

    add-int v29, v21, v9

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    mul-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 525
    .end local v5    # "b3":Ljava/math/BigDecimal;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 528
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v12    # "compareTime":J
    :cond_1
    const-string v28, "y"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v28, "y"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 529
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getNearDelay(Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DelayModel;

    move-result-object v15

    .line 566
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v14    # "details":[Ljava/lang/String;
    .end local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    .end local v19    # "openEn":Ljava/lang/String;
    .end local v20    # "openTime":Ljava/lang/String;
    .end local v21    # "opentime":I
    .end local v22    # "repeat":I
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "setDate":Ljava/util/Date;
    .end local v27    # "setTime":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v15

    .line 514
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v12    # "compareTime":J
    .restart local v14    # "details":[Ljava/lang/String;
    .restart local v15    # "dm":Lcom/kankunit/smartplugcronus/model/DelayModel;
    .restart local v19    # "openEn":Ljava/lang/String;
    .restart local v20    # "openTime":Ljava/lang/String;
    .restart local v21    # "opentime":I
    .restart local v22    # "repeat":I
    .restart local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v25    # "setDate":Ljava/util/Date;
    .restart local v27    # "setTime":Ljava/lang/String;
    :cond_3
    const-string v28, "y"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 515
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    move/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 516
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v28, 0x0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 517
    .restart local v5    # "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 518
    const/16 v28, 0xc

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    mul-int v29, v29, v21

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v2    # "allEn":Ljava/lang/String;
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "closeEn":Ljava/lang/String;
    .end local v8    # "closeTime":Ljava/lang/String;
    .end local v9    # "closetime":I
    .end local v12    # "compareTime":J
    .end local v14    # "details":[Ljava/lang/String;
    .end local v19    # "openEn":Ljava/lang/String;
    .end local v20    # "openTime":Ljava/lang/String;
    .end local v21    # "opentime":I
    .end local v22    # "repeat":I
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "setDate":Ljava/util/Date;
    .end local v27    # "setTime":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 564
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 519
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v2    # "allEn":Ljava/lang/String;
    .restart local v3    # "b1":Ljava/math/BigDecimal;
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    .restart local v6    # "cal":Ljava/util/Calendar;
    .restart local v7    # "closeEn":Ljava/lang/String;
    .restart local v8    # "closeTime":Ljava/lang/String;
    .restart local v9    # "closetime":I
    .restart local v12    # "compareTime":J
    .restart local v14    # "details":[Ljava/lang/String;
    .restart local v19    # "openEn":Ljava/lang/String;
    .restart local v20    # "openTime":Ljava/lang/String;
    .restart local v21    # "opentime":I
    .restart local v22    # "repeat":I
    .restart local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v25    # "setDate":Ljava/util/Date;
    .restart local v27    # "setTime":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v28, "y"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 520
    new-instance v4, Ljava/math/BigDecimal;

    .end local v4    # "b2":Ljava/math/BigDecimal;
    invoke-direct {v4, v9}, Ljava/math/BigDecimal;-><init>(I)V

    .line 521
    .restart local v4    # "b2":Ljava/math/BigDecimal;
    const/16 v28, 0x0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v4, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 522
    .restart local v5    # "b3":Ljava/math/BigDecimal;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 523
    const/16 v28, 0xc

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    mul-int v29, v29, v9

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 532
    .end local v3    # "b1":Ljava/math/BigDecimal;
    .end local v4    # "b2":Ljava/math/BigDecimal;
    .end local v5    # "b3":Ljava/math/BigDecimal;
    .end local v12    # "compareTime":J
    :cond_5
    const/16 v28, 0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 533
    add-int/lit8 v22, v22, -0x1

    .line 535
    :cond_6
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 536
    .local v18, "nowData":Ljava/util/Date;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    .line 537
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    .line 538
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 539
    const-string v28, "y"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 540
    const/16 v28, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 541
    add-int/lit8 v30, v17, 0x1

    mul-int v29, v29, v30

    .line 540
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 543
    :cond_7
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    .line 544
    .local v26, "setOpenDate":Ljava/util/Date;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v12

    .line 545
    .restart local v12    # "compareTime":J
    const-wide/16 v28, 0x0

    cmp-long v28, v12, v28

    if-lez v28, :cond_8

    .line 546
    invoke-virtual {v15, v12, v13}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 547
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseRealTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 551
    :cond_8
    const-string v28, "y"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 552
    const/16 v28, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 553
    add-int/lit8 v30, v17, 0x1

    mul-int v29, v29, v30

    .line 552
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 555
    :cond_9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v24

    .line 556
    .local v24, "setCloseDate":Ljava/util/Date;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->compare_date(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v10

    .line 557
    .local v10, "compareCloseTime":J
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-lez v28, :cond_a

    .line 558
    invoke-virtual {v15, v10, v11}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseLongTime(J)V

    .line 559
    invoke-virtual/range {v23 .. v24}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/kankunit/smartplugcronus/model/DelayModel;->setDelayCloseRealTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 537
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2
.end method

.method public static getTimeStr(JZ)Ljava/lang/String;
    .locals 23
    .param p0, "time"    # J
    .param p2, "needSecond"    # Z

    .prologue
    .line 579
    const/16 v18, 0x3e8

    .line 580
    .local v18, "ss":I
    mul-int/lit8 v10, v18, 0x3c

    .line 581
    .local v10, "mi":I
    mul-int/lit8 v6, v10, 0x3c

    .line 582
    .local v6, "hh":I
    mul-int/lit8 v5, v6, 0x18

    .line 583
    .local v5, "dd":I
    int-to-long v0, v5

    move-wide/from16 v19, v0

    div-long v2, p0, v19

    .line 584
    .local v2, "day":J
    int-to-long v0, v5

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, p0, v19

    int-to-long v0, v6

    move-wide/from16 v21, v0

    div-long v7, v19, v21

    .line 585
    .local v7, "hour":J
    int-to-long v0, v5

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, p0, v19

    int-to-long v0, v6

    move-wide/from16 v21, v0

    mul-long v21, v21, v7

    sub-long v19, v19, v21

    int-to-long v0, v10

    move-wide/from16 v21, v0

    div-long v11, v19, v21

    .line 586
    .local v11, "minute":J
    int-to-long v0, v5

    move-wide/from16 v19, v0

    mul-long v19, v19, v2

    sub-long v19, p0, v19

    int-to-long v0, v6

    move-wide/from16 v21, v0

    mul-long v21, v21, v7

    sub-long v19, v19, v21

    int-to-long v0, v10

    move-wide/from16 v21, v0

    mul-long v21, v21, v11

    sub-long v19, v19, v21

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    div-long v15, v19, v21

    .line 587
    .local v15, "second":J
    const-wide/16 v19, 0x0

    cmp-long v19, v2, v19

    if-nez v19, :cond_0

    const-string v4, ""

    .line 588
    .local v4, "dayStr":Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-nez v19, :cond_1

    const-string v9, ""

    .line 589
    .local v9, "hourStr":Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-nez v19, :cond_2

    const-string v13, ""

    .line 590
    .local v13, "minuteStr":Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-nez v19, :cond_3

    const-string v17, ""

    .line 591
    .local v17, "secondStr":Ljava/lang/String;
    :goto_3
    const-string v14, ""

    .line 592
    .local v14, "result":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 593
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 594
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 595
    const-string v19, "0 seconds"

    .line 603
    :goto_4
    return-object v19

    .line 587
    .end local v4    # "dayStr":Ljava/lang/String;
    .end local v9    # "hourStr":Ljava/lang/String;
    .end local v13    # "minuteStr":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    .end local v17    # "secondStr":Ljava/lang/String;
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "Day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 588
    .restart local v4    # "dayStr":Ljava/lang/String;
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "Hours"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 589
    .restart local v9    # "hourStr":Ljava/lang/String;
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "Minutes"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 590
    .restart local v13    # "minuteStr":Ljava/lang/String;
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "Seconds"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    .line 598
    .restart local v14    # "result":Ljava/lang/String;
    .restart local v17    # "secondStr":Ljava/lang/String;
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 599
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 600
    const-string v19, "0 Minutes"

    goto :goto_4

    :cond_5
    move-object/from16 v19, v14

    .line 603
    goto :goto_4
.end method
