.class public Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
.super Landroid/widget/LinearLayout;
.source "UnReadEventView.java"


# static fields
.field private static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field private static final DEBUG:Z = true

.field private static final MISSED_CALL_SETTING:Ljava/lang/String; = "com_android_contacts_mtk_unread"

.field private static final TAG:Ljava/lang/String; = "UnReadEventView"

.field private static final UNRAD_EMAIL_SETTING:Ljava/lang/String; = "com_android_email_mtk_unread"

.field private static final UNREAD_MMS_SETTING:Ljava/lang/String; = "com_android_mms_mtk_unread"


# instance fields
.field private mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

.field private mNewEventViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryBaseTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    .line 79
    sget-object v5, Lcom/mediatek/internal/R$styleable;->UnReadEventView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 83
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 84
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 85
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :pswitch_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v4, outValue:Landroid/util/TypedValue;
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->initUnReadViews(I)V

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 93
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must specify at least one target drawable"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    .end local v2           #attr:I
    .end local v4           #outValue:Landroid/util/TypedValue;
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->setMotionEventSplittingEnabled(Z)V

    .line 99
    return-void

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initUnReadViews(I)V
    .locals 17
    .parameter "resourceId"

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 107
    .local v11, res:Landroid/content/res/Resources;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 108
    .local v1, array:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 109
    .local v2, count:I
    if-gtz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v4, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 115
    .local v8, layouterInfalter:Landroid/view/LayoutInflater;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v10, newEventViwsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 117
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 118
    .local v12, value:Landroid/util/TypedValue;
    if-eqz v12, :cond_1

    iget v13, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v13, :cond_1

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "keyguard_new_event_view"

    const-string v15, "layout"

    const v16, 0x207000d

    invoke-static/range {v13 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 124
    .local v6, idLayout:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v8, v6, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 125
    .local v3, drawableView:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "new_event_view"

    const-string v15, "id"

    const v16, 0x20e0023

    invoke-static/range {v13 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 127
    .local v7, idNewEventView:I
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 129
    .local v9, newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setTopParent(Landroid/view/ViewGroup;)V

    .line 130
    iget v13, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->init(I)V

    .line 131
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setViewVisibility(I)V

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v3           #drawableView:Landroid/view/ViewGroup;
    .end local v6           #idLayout:I
    .end local v7           #idNewEventView:I
    .end local v9           #newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v12           #value:Landroid/util/TypedValue;
    :cond_2
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private registerNewEventObserver(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .locals 12
    .parameter "newEventView"

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getResourceId()I

    move-result v6

    .line 175
    .local v6, resourceId:I
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQueryBaseTimeWhenRegisterNewEvevtObserver="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_newevent_smsmms"

    const-string v9, "drawable"

    const v10, 0x2020072

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 179
    .local v3, drwSms:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_newevent_phone"

    const-string v9, "drawable"

    const v10, 0x2020071

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 181
    .local v2, drwPhone:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_newevent_email"

    const-string v9, "drawable"

    const v10, 0x2020070

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, drwEmail:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ic_newevent_calendar"

    const-string v9, "drawable"

    const v10, 0x202006f

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getContextResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, drwCalendar:I
    if-ne v6, v3, :cond_1

    .line 189
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iget-wide v8, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v5, v7, p1, v8, v9}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .line 190
    .local v5, obMms:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v7, v5}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    .line 191
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->refreshUnReadNumber()V

    .line 223
    .end local v5           #obMms:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    if-ne v6, v2, :cond_2

    .line 194
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iget-wide v8, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v4, v7, p1, v8, v9}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .line 195
    .local v4, obMissCall:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v7, v4}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    .line 196
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->refreshUnReadNumber()V

    goto :goto_0

    .line 197
    .end local v4           #obMissCall:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;
    :cond_2
    if-ne v6, v1, :cond_3

    .line 198
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iget-wide v10, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v8, v9, p1, v10, v11}, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    goto :goto_0

    .line 199
    :cond_3
    if-ne v6, v0, :cond_0

    .line 200
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;->CALENDAR_URL:Landroid/net/Uri;

    new-instance v8, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iget-wide v10, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v8, v9, p1, v10, v11}, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public getNewEventViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 143
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 148
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->registerNewEventObserver(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 163
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->unRegisterNewEventObserver()V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 227
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 228
    return-void
.end method

.method public updateQueryBaseTimeAndRefreshUnReadNumber(J)V
    .locals 4
    .parameter "qbt"

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    .line 232
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueryBaseTimeReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
