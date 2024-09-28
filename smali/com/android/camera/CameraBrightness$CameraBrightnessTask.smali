.class public Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final ADJUST_RATIO_BASE:F

.field public final ADJUST_RATIO_RANGE:F

.field public final DEBUG:Z

.field public final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mBrightnessMode:I

.field public final mCallbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/CameraBrightnessCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mPaused:Z

.field public mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

.field public mScreenAutoBrightnessRatioInner:F

.field public mScreenManualBrightnessSpline:Landroid/util/Spline;

.field public mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/CameraBrightnessCallback;ZZF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->DEBUG:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    const v0, 0x3e99999a    # 0.3f

    .line 4
    iput v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->ADJUST_RATIO_RANGE:F

    const v0, 0x3dcccccd    # 0.1f

    .line 5
    iput v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->ADJUST_RATIO_BASE:F

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    .line 8
    iput-boolean p4, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    .line 9
    iput-boolean p3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    .line 10
    iput p5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenAutoBrightnessRatioInner:F

    return-void
.end method

.method private createManualBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 5

    .line 1
    :try_start_0
    array-length v0, p1

    .line 2
    new-array v1, v0, [F

    .line 3
    new-array v2, v0, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    aget v4, p1, v3

    int-to-float v4, v4

    aput v4, v1, v3

    .line 5
    aget v4, p2, v3

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;

    invoke-direct {p1, v1, v2}, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;-><init>([F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "CameraBrightness"

    const-string v0, "Could not create manual-brightness spline."

    .line 7
    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private createSpline()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    const-string v1, "config_manual_spline_available"

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getAndroidBoolRes(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "config_manualBrightnessRemapIn"

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getAndroidArrayRes(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "config_manualBrightnessRemapOut"

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getAndroidArrayRes(Ljava/lang/String;)[I

    move-result-object v1

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 7
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "CameraBrightness"

    const-string v1, "Error to create manual brightness spline"

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "CameraBrightness"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, ""

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 5
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execCommand lcd value="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cost="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "execCommand IOException"

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "execCommand InterruptedException"

    .line 15
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-object v3
.end method

.method private getAndroidArrayRes(Ljava/lang/String;)[I
    .locals 2

    :try_start_0
    const-string v0, "com.android.internal.R$array"

    .line 1
    invoke-static {v0, p1}, Lcom/android/camera/GeneralUtils;->getReflectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v0, "android.miui.R$array"

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/GeneralUtils;->getReflectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 7
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private getAndroidBoolRes(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    const-string v0, "com.android.internal.R$bool"

    .line 1
    invoke-static {v0, p1}, Lcom/android/camera/GeneralUtils;->getReflectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v0, "android.miui.R$bool"

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/GeneralUtils;->getReflectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    return p1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getAndroidIntResource(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "com.android.internal.R$integer"

    .line 1
    invoke-static {v0, p1}, Lcom/android/camera/GeneralUtils;->getReflectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBrightness"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private getBrightIsAndroidP(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const-string/jumbo v0, "screen_brightness_mode"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0Oo()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraBrightnessCallback;

    iget v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    invoke-interface {v1, v3}, Lcom/android/camera/CameraBrightnessCallback;->setPreviousBrightnessMode(I)V

    .line 6
    iget v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v1}, Lcom/android/camera/CameraBrightnessCallback;->getPreviousBrightnessMode()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10
    iput v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    .line 11
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mBrightnessMode:I

    if-ne v0, v2, :cond_6

    .line 12
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    const/4 v1, 0x0

    const-string v2, "CameraBrightness"

    const/high16 v3, 0x3f000000    # 0.5f

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenAutoBrightnessRatioInner:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    const-string v0, "adjustBrightnessInAutoMode(0.5)"

    .line 13
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v0, v3}, Lcom/android/camera/CameraBrightnessCallback;->adjustBrightnessInAutoMode(F)V

    goto :goto_2

    .line 15
    :cond_4
    iget v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenAutoBrightnessRatioInner:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    const-string v0, "adjustBrightnessInAutoMode(0)"

    .line 16
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraBrightnessCallback;->adjustBrightnessInAutoMode(F)V

    .line 18
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/android/camera/CameraBrightnessCallback;->setBrightness(I)V

    :cond_6
    return-void
.end method

.method private getBrightNotAndroidP(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getCurrentBackLight()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current back light -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraBrightness"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->createSpline()V

    .line 4
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr p1, v3

    .line 5
    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPositiveScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    sub-int/2addr p1, v0

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v3, 0x1

    if-gt p1, v3, :cond_2

    const-string p1, "doInBackground brightness unchanged"

    .line 9
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-eqz p1, :cond_3

    int-to-float v0, v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int v0, p1

    .line 12
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->toEnLargeBrightness(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentBackLight()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "0"

    .line 1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "CameraBrightness"

    if-nez v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "cat sys/class/backlight/panel0-backlight/brightness"

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_0

    :cond_3
    const-wide/16 v2, 0x12c

    .line 5
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentBackLight currentSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_7

    const-string v1, "config_backlightBits"

    .line 9
    invoke-direct {p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getAndroidIntResource(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    const-string v1, "config_backlightBit"

    .line 10
    invoke-direct {p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getMiuiIntResource(Ljava/lang/String;)I

    move-result v1

    .line 11
    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x8

    if-le v1, v3, :cond_7

    sub-int/2addr v1, v3

    const/4 v2, 0x1

    shl-int v3, v2, v1

    if-ge v0, v3, :cond_6

    goto :goto_3

    :cond_6
    shr-int v2, v0, v1

    .line 12
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentBackLight convert to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method private getMiuiIntResource(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "android.miui.R$integer"

    .line 1
    invoke-static {v0, p1}, Lcom/android/camera/GeneralUtils;->getReflectField(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBrightness"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private toEnLargeBrightness(I)I
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0xb9

    .line 1
    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43390000    # 185.0f

    div-float/2addr v1, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    int-to-double v2, p1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int p1, v2

    const/16 v1, 0xff

    .line 2
    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private updateBrightness(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    if-nez v1, :cond_1

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBrightness setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " useDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraBrightness"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraBrightnessCallback;->setBrightness(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground useDefaultValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mUseDefaultValue:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " paused="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mPaused:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraBrightness"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getBrightIsAndroidP(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getBrightNotAndroidP(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraBrightnessCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraBrightnessCallback;->setBrightness(I)V

    .line 4
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness(I)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
