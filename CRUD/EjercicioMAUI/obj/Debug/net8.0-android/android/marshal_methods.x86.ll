; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [343 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [680 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32648677, ; 3: EjercicioMAUI.dll => 0x1f22de5 => 0
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 250
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 284
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 9: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 295
	i32 57727992, ; 10: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 296
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 335
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 200
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 268
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 268
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 288
	i32 139659294, ; 21: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 296
	i32 142721839, ; 22: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 23: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 24: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 25: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 224
	i32 166535111, ; 26: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 299
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 270
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 30: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 332
	i32 199333315, ; 31: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 333
	i32 205061960, ; 32: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 33: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 222
	i32 214922764, ; 34: DAL => 0xccf760c => 337
	i32 220171995, ; 35: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 36: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 244
	i32 230752869, ; 37: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 38: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 39: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 40: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 227
	i32 264223668, ; 42: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 300
	i32 276479776, ; 43: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 246
	i32 280482487, ; 45: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 243
	i32 280992041, ; 46: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 304
	i32 291076382, ; 47: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 332
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 213
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 52: Microsoft.SqlServer.Server => 0x13ada4fd => 201
	i32 336156722, ; 53: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 317
	i32 342366114, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 245
	i32 356389973, ; 55: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 316
	i32 360082299, ; 56: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 57: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 58: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 59: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 60: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 61: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 62: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 63: _Microsoft.Android.Resource.Designer => 0x17969339 => 339
	i32 403441872, ; 64: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 65: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 328
	i32 441335492, ; 66: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 228
	i32 442565967, ; 67: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 68: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 241
	i32 451504562, ; 69: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 70: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 71: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 72: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 73: System.dll => 0x1bff388e => 164
	i32 476646585, ; 74: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 243
	i32 485463106, ; 75: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 189
	i32 486930444, ; 76: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 256
	i32 494707389, ; 77: BL => 0x1d7ca2bd => 336
	i32 498788369, ; 78: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 79: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 315
	i32 503918385, ; 80: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 309
	i32 513247710, ; 81: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 186
	i32 526420162, ; 82: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 83: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 288
	i32 530272170, ; 84: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 85: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 86: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 89: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 176
	i32 549171840, ; 90: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 91: Jsr305Binding => 0x213954e7 => 281
	i32 569601784, ; 92: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 279
	i32 577335427, ; 93: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 94: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 323
	i32 601371474, ; 95: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 96: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 97: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 233
	i32 627931235, ; 99: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 321
	i32 639843206, ; 100: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 239
	i32 643868501, ; 101: System.Net => 0x2660a755 => 81
	i32 662205335, ; 102: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 103: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 275
	i32 666292255, ; 104: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 220
	i32 672442732, ; 105: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 106: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 107: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 303
	i32 690569205, ; 108: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 290
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 285
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 114: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 318
	i32 709557578, ; 115: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 306
	i32 720511267, ; 116: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 289
	i32 722857257, ; 117: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 118: System.ClientModel.dll => 0x2b244044 => 202
	i32 735137430, ; 119: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 120: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 121: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 210
	i32 759454413, ; 122: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 123: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 124: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 125: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 327
	i32 789151979, ; 126: Microsoft.Extensions.Options => 0x2f0980eb => 185
	i32 790371945, ; 127: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 234
	i32 804715423, ; 128: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 248
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 133: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 134: Xamarin.AndroidX.Print => 0x3246f6cd => 261
	i32 873119928, ; 135: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 136: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 137: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 138: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 139: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 140: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 330
	i32 928116545, ; 141: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 284
	i32 952186615, ; 142: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 289
	i32 966729478, ; 144: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 282
	i32 967690846, ; 145: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 245
	i32 975236339, ; 146: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 147: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 148: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 149: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 150: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 151: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 152: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 153: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 265
	i32 1019214401, ; 154: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 155: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1029334545, ; 156: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 305
	i32 1031528504, ; 157: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 283
	i32 1035644815, ; 158: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 218
	i32 1036536393, ; 159: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 160: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 161: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 292
	i32 1052210849, ; 162: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 252
	i32 1062017875, ; 163: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 188
	i32 1067306892, ; 164: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 165: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 166: Xamarin.Kotlin.StdLib => 0x409e66d8 => 286
	i32 1089913930, ; 167: System.Diagnostics.EventLog.dll => 0x40f6c44a => 204
	i32 1098259244, ; 168: System => 0x41761b2c => 164
	i32 1118262833, ; 169: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 318
	i32 1121599056, ; 170: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 251
	i32 1127624469, ; 171: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1138436374, ; 172: Microsoft.Data.SqlClient.dll => 0x43db2916 => 177
	i32 1149092582, ; 173: Xamarin.AndroidX.Window => 0x447dc2e6 => 278
	i32 1168523401, ; 174: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 324
	i32 1170634674, ; 175: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 176: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 274
	i32 1178241025, ; 177: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 259
	i32 1203215381, ; 178: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 322
	i32 1204270330, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 220
	i32 1208641965, ; 180: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 181: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 182: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 320
	i32 1243150071, ; 183: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 279
	i32 1253011324, ; 184: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 185: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 304
	i32 1264511973, ; 186: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 269
	i32 1267360935, ; 187: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 273
	i32 1273260888, ; 188: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 225
	i32 1275534314, ; 189: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 290
	i32 1278448581, ; 190: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 217
	i32 1293217323, ; 191: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 236
	i32 1309188875, ; 192: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 193: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 278
	i32 1324164729, ; 194: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 195: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 196: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 197: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 334
	i32 1376866003, ; 198: Xamarin.AndroidX.SavedState => 0x52114ed3 => 265
	i32 1379779777, ; 199: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 200: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 201: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 229
	i32 1408764838, ; 202: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 203: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 204: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 205: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 302
	i32 1434145427, ; 206: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 207: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 282
	i32 1439761251, ; 208: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 209: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 210: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 213: System.IdentityModel.Tokens.Jwt => 0x57137723 => 205
	i32 1461004990, ; 214: es\Microsoft.Maui.Controls.resources => 0x57152abe => 308
	i32 1461234159, ; 215: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 216: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 217: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 218: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 219
	i32 1470490898, ; 219: Microsoft.Extensions.Primitives => 0x57a5e912 => 186
	i32 1479771757, ; 220: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 221: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 222: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 223: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 266
	i32 1493001747, ; 224: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 312
	i32 1498168481, ; 225: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 190
	i32 1514721132, ; 226: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 307
	i32 1536373174, ; 227: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 228: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 229: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 230: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 231: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 327
	i32 1565310744, ; 232: System.Runtime.Caching => 0x5d4cbf18 => 207
	i32 1565862583, ; 233: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 234: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 235: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 236: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 237: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 238: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 235
	i32 1592978981, ; 239: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 240: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 301
	i32 1597949149, ; 241: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 283
	i32 1601112923, ; 242: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 243: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 244: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 245: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 255
	i32 1622358360, ; 246: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 247: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 277
	i32 1628113371, ; 248: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 193
	i32 1635184631, ; 249: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 239
	i32 1636350590, ; 250: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 232
	i32 1639515021, ; 251: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 252: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 253: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 254: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 255: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 271
	i32 1658251792, ; 256: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 280
	i32 1670060433, ; 257: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 227
	i32 1675553242, ; 258: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 259: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 260: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 261: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 262: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 263: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 264: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 287
	i32 1701541528, ; 265: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 248
	i32 1726116996, ; 267: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 268: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 269: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 223
	i32 1736233607, ; 270: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 325
	i32 1743415430, ; 271: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 303
	i32 1744735666, ; 272: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 273: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 274: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 275: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 276: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 277: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 278: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 270
	i32 1770582343, ; 279: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 280: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 281: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 282: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 283: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 319
	i32 1788241197, ; 284: Xamarin.AndroidX.Fragment => 0x6a96652d => 241
	i32 1793755602, ; 285: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 311
	i32 1794500907, ; 286: Microsoft.Identity.Client.dll => 0x6af5e92b => 187
	i32 1796167890, ; 287: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 176
	i32 1808609942, ; 288: Xamarin.AndroidX.Loader => 0x6bcd3296 => 255
	i32 1813058853, ; 289: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 286
	i32 1813201214, ; 290: Xamarin.Google.Android.Material => 0x6c13413e => 280
	i32 1818569960, ; 291: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 260
	i32 1818787751, ; 292: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 293: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 294: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 295: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1842015223, ; 296: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 331
	i32 1847515442, ; 297: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 210
	i32 1853025655, ; 298: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 328
	i32 1858542181, ; 299: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 300: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 301: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 193
	i32 1875935024, ; 302: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 310
	i32 1879696579, ; 303: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 304: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 221
	i32 1888955245, ; 305: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 306: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 307: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 308: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 309: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 310: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 311: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 312: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 267
	i32 1968388702, ; 313: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1983156543, ; 314: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 287
	i32 1985761444, ; 315: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 212
	i32 1986222447, ; 316: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 194
	i32 2003115576, ; 317: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 307
	i32 2011961780, ; 318: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 319: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 252
	i32 2025202353, ; 320: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 302
	i32 2031763787, ; 321: Xamarin.Android.Glide => 0x791a414b => 209
	i32 2040764568, ; 322: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 188
	i32 2045470958, ; 323: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 324: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 247
	i32 2060060697, ; 325: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 326: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 306
	i32 2070888862, ; 327: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 328: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 329: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 330: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 331: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 332: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 333: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 334: Microsoft.Maui => 0x80bd55ad => 198
	i32 2169148018, ; 335: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 314
	i32 2181898931, ; 336: Microsoft.Extensions.Options.dll => 0x820d22b3 => 185
	i32 2192057212, ; 337: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 338: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 339: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 291
	i32 2201231467, ; 340: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 341: it\Microsoft.Maui.Controls.resources => 0x839595db => 316
	i32 2217644978, ; 342: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 274
	i32 2222056684, ; 343: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 344: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 298
	i32 2244775296, ; 345: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 256
	i32 2252106437, ; 346: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 347: Microsoft.IdentityModel.Protocols => 0x86527819 => 192
	i32 2256313426, ; 348: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 349: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 350: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 351: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 211
	i32 2270573516, ; 352: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 310
	i32 2279755925, ; 353: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 263
	i32 2293034957, ; 354: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 355: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 356: System.Net.Mail => 0x88ffe49e => 66
	i32 2299276061, ; 357: BL.dll => 0x890c2b1d => 336
	i32 2303942373, ; 358: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 320
	i32 2305521784, ; 359: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 360: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 297
	i32 2315684594, ; 361: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 215
	i32 2320631194, ; 362: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 363: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 364: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 365: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 366: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 367: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 191
	i32 2371007202, ; 368: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 369: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 370: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2383691401, ; 371: EjercicioMAUI => 0x8e143e89 => 0
	i32 2395872292, ; 372: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 315
	i32 2401565422, ; 373: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 374: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 238
	i32 2421380589, ; 375: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 376: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 225
	i32 2427813419, ; 377: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 312
	i32 2435356389, ; 378: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 379: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 380: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 381: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 382: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 383: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 228
	i32 2471841756, ; 384: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 385: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 386: Microsoft.Maui.Controls => 0x93dba8a1 => 196
	i32 2483903535, ; 387: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 388: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 389: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 390: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 391: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 250
	i32 2509217888, ; 392: System.Diagnostics.EventLog => 0x958fa060 => 204
	i32 2522472828, ; 393: Xamarin.Android.Glide.dll => 0x9659e17c => 209
	i32 2538310050, ; 394: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 395: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 313
	i32 2562349572, ; 396: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 397: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 398: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 251
	i32 2581819634, ; 399: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 273
	i32 2585220780, ; 400: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 401: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 402: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 403: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 322
	i32 2605712449, ; 404: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 291
	i32 2615233544, ; 405: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 242
	i32 2616218305, ; 406: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 407: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 408: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 409: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 232
	i32 2624644809, ; 410: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 237
	i32 2626831493, ; 411: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 317
	i32 2627185994, ; 412: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 413: System.Memory.Data => 0x9ca74fdc => 206
	i32 2629843544, ; 414: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 415: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 246
	i32 2640290731, ; 416: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 191
	i32 2640706905, ; 417: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 418: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 208
	i32 2663391936, ; 419: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 211
	i32 2663698177, ; 420: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 421: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 422: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 423: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 424: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 425: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 426: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 427: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 271
	i32 2704388643, ; 428: ENT.dll => 0xa131b223 => 338
	i32 2715334215, ; 429: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 430: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 431: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 432: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 433: Xamarin.AndroidX.Activity => 0xa2e0939b => 213
	i32 2735172069, ; 434: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 435: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 219
	i32 2740051746, ; 436: Microsoft.Identity.Client => 0xa351df22 => 187
	i32 2740948882, ; 437: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 438: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 439: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 323
	i32 2755098380, ; 440: Microsoft.SqlServer.Server.dll => 0xa437770c => 201
	i32 2758225723, ; 441: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 197
	i32 2764765095, ; 442: Microsoft.Maui.dll => 0xa4caf7a7 => 198
	i32 2765824710, ; 443: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 444: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 285
	i32 2778768386, ; 445: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 276
	i32 2779977773, ; 446: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 264
	i32 2785988530, ; 447: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 329
	i32 2788224221, ; 448: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 242
	i32 2801831435, ; 449: Microsoft.Maui.Graphics => 0xa7008e0b => 200
	i32 2803228030, ; 450: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 451: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 293
	i32 2806116107, ; 452: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 308
	i32 2810250172, ; 453: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 229
	i32 2819470561, ; 454: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 455: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 456: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 264
	i32 2824502124, ; 457: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 458: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 321
	i32 2838993487, ; 459: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 253
	i32 2841937114, ; 460: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 295
	i32 2849599387, ; 461: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 462: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 276
	i32 2855708567, ; 463: Xamarin.AndroidX.Transition => 0xaa36a797 => 272
	i32 2861098320, ; 464: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 465: Microsoft.Maui.Essentials => 0xaa8a4878 => 199
	i32 2867946736, ; 466: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 208
	i32 2870099610, ; 467: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 214
	i32 2875164099, ; 468: Jsr305Binding.dll => 0xab5f85c3 => 281
	i32 2875220617, ; 469: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 470: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 240
	i32 2887636118, ; 471: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 472: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 473: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 474: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 475: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 476: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 477: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 277
	i32 2919462931, ; 478: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 479: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 216
	i32 2936416060, ; 480: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 481: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 482: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 483: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 203
	i32 2959614098, ; 484: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 485: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 486: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 487: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 236
	i32 2987532451, ; 488: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 267
	i32 2996846495, ; 489: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 249
	i32 3012788804, ; 490: System.Configuration.ConfigurationManager => 0xb3938244 => 203
	i32 3016983068, ; 491: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 269
	i32 3023353419, ; 492: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 493: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 299
	i32 3024354802, ; 494: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 244
	i32 3033605958, ; 495: System.Memory.Data.dll => 0xb4d12746 => 206
	i32 3038032645, ; 496: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 339
	i32 3056245963, ; 497: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 266
	i32 3057625584, ; 498: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 257
	i32 3059408633, ; 499: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 500: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 501: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 502: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 314
	i32 3084678329, ; 503: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 194
	i32 3090735792, ; 504: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 505: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 506: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 507: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 508: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 509: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 510: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 511: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 512: GoogleGson.dll => 0xbba64c02 => 175
	i32 3158628304, ; 513: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 301
	i32 3159123045, ; 514: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 515: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 516: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 258
	i32 3192346100, ; 517: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 518: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 519: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 520: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 521: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 235
	i32 3220365878, ; 522: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 523: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 524: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 525: Xamarin.AndroidX.CardView => 0xc235e84d => 223
	i32 3265493905, ; 526: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 527: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 528: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 294
	i32 3276600297, ; 529: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 298
	i32 3277815716, ; 530: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 531: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 532: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 533: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 534: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 535: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 536: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 309
	i32 3308768045, ; 537: DAL.dll => 0xc537cb2d => 337
	i32 3312457198, ; 538: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 190
	i32 3316684772, ; 539: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 540: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 233
	i32 3317144872, ; 541: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 542: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 221
	i32 3343947874, ; 543: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 294
	i32 3345895724, ; 544: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 262
	i32 3346324047, ; 545: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 259
	i32 3357674450, ; 546: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 326
	i32 3358260929, ; 547: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 548: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 214
	i32 3362522851, ; 549: Xamarin.AndroidX.Core => 0xc86c06e3 => 230
	i32 3366347497, ; 550: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 551: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 192
	i32 3374999561, ; 552: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 263
	i32 3381016424, ; 553: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 305
	i32 3395150330, ; 554: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 555: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 556: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 234
	i32 3428513518, ; 557: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 558: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 559: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 560: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 237
	i32 3445260447, ; 561: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 562: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 195
	i32 3463511458, ; 563: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 313
	i32 3471940407, ; 564: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 565: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 566: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 326
	i32 3484440000, ; 567: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 325
	i32 3485117614, ; 568: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 569: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 570: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 226
	i32 3509114376, ; 571: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 572: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 573: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 574: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 575: Microsoft.Data.SqlClient => 0xd35114f1 => 177
	i32 3555084973, ; 576: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 292
	i32 3558648585, ; 577: System.ClientModel => 0xd41cab09 => 202
	i32 3560100363, ; 578: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 579: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 580: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 581: System.Runtime.Caching.dll => 0xd4d3289f => 207
	i32 3580758918, ; 582: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 333
	i32 3597029428, ; 583: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 212
	i32 3598340787, ; 584: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 585: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 586: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 587: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 261
	i32 3633644679, ; 588: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 216
	i32 3638274909, ; 589: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 590: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 247
	i32 3643446276, ; 591: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 330
	i32 3643854240, ; 592: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 258
	i32 3645089577, ; 593: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 594: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 595: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 596: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 597: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 222
	i32 3684561358, ; 598: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 226
	i32 3697841164, ; 599: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 335
	i32 3700591436, ; 600: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 189
	i32 3700866549, ; 601: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 602: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 231
	i32 3716563718, ; 603: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 604: Xamarin.AndroidX.Annotation => 0xdda814c6 => 215
	i32 3724971120, ; 605: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 257
	i32 3732100267, ; 606: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 607: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 608: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 609: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 610: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 224
	i32 3792276235, ; 611: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 612: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 195
	i32 3802395368, ; 613: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 614: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 300
	i32 3819260425, ; 615: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 616: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 617: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 618: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 619: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 620: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 293
	i32 3849253459, ; 621: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 622: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 623: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 624: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 625: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 626: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 272
	i32 3888767677, ; 627: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 262
	i32 3889960447, ; 628: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 334
	i32 3896106733, ; 629: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 630: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 230
	i32 3901907137, ; 631: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 632: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 633: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 275
	i32 3928044579, ; 634: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 635: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 636: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 260
	i32 3945713374, ; 637: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 638: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 639: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 218
	i32 3959773229, ; 640: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 249
	i32 3980434154, ; 641: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 329
	i32 3982272174, ; 642: ENT => 0xed5ca6ae => 338
	i32 3987592930, ; 643: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 311
	i32 4003436829, ; 644: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 645: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 217
	i32 4025784931, ; 646: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 647: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 197
	i32 4054681211, ; 648: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 649: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 650: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 651: Microsoft.Maui.Essentials.dll => 0xf40add04 => 199
	i32 4099507663, ; 652: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 653: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 654: Xamarin.AndroidX.Emoji2 => 0xf479582c => 238
	i32 4102112229, ; 655: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 324
	i32 4125707920, ; 656: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 319
	i32 4126470640, ; 657: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 658: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 659: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 660: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 661: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 331
	i32 4151237749, ; 662: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 663: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 664: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 665: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 666: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 667: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 254
	i32 4185676441, ; 668: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 669: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 670: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 671: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 231
	i32 4257443520, ; 672: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 297
	i32 4258378803, ; 673: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 253
	i32 4260525087, ; 674: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 675: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 205
	i32 4271975918, ; 676: Microsoft.Maui.Controls.dll => 0xfea12dee => 196
	i32 4274976490, ; 677: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 678: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 254
	i32 4294763496 ; 679: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 240
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [680 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 0, ; 3
	i32 250, ; 4
	i32 284, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 295, ; 9
	i32 296, ; 10
	i32 30, ; 11
	i32 335, ; 12
	i32 124, ; 13
	i32 200, ; 14
	i32 102, ; 15
	i32 268, ; 16
	i32 107, ; 17
	i32 268, ; 18
	i32 139, ; 19
	i32 288, ; 20
	i32 296, ; 21
	i32 77, ; 22
	i32 124, ; 23
	i32 13, ; 24
	i32 224, ; 25
	i32 299, ; 26
	i32 132, ; 27
	i32 270, ; 28
	i32 151, ; 29
	i32 332, ; 30
	i32 333, ; 31
	i32 18, ; 32
	i32 222, ; 33
	i32 337, ; 34
	i32 26, ; 35
	i32 244, ; 36
	i32 1, ; 37
	i32 59, ; 38
	i32 42, ; 39
	i32 91, ; 40
	i32 227, ; 41
	i32 300, ; 42
	i32 147, ; 43
	i32 246, ; 44
	i32 243, ; 45
	i32 304, ; 46
	i32 54, ; 47
	i32 69, ; 48
	i32 332, ; 49
	i32 213, ; 50
	i32 83, ; 51
	i32 201, ; 52
	i32 317, ; 53
	i32 245, ; 54
	i32 316, ; 55
	i32 131, ; 56
	i32 55, ; 57
	i32 149, ; 58
	i32 74, ; 59
	i32 145, ; 60
	i32 62, ; 61
	i32 146, ; 62
	i32 339, ; 63
	i32 165, ; 64
	i32 328, ; 65
	i32 228, ; 66
	i32 12, ; 67
	i32 241, ; 68
	i32 125, ; 69
	i32 152, ; 70
	i32 113, ; 71
	i32 166, ; 72
	i32 164, ; 73
	i32 243, ; 74
	i32 189, ; 75
	i32 256, ; 76
	i32 336, ; 77
	i32 84, ; 78
	i32 315, ; 79
	i32 309, ; 80
	i32 186, ; 81
	i32 150, ; 82
	i32 288, ; 83
	i32 60, ; 84
	i32 182, ; 85
	i32 51, ; 86
	i32 103, ; 87
	i32 114, ; 88
	i32 176, ; 89
	i32 40, ; 90
	i32 281, ; 91
	i32 279, ; 92
	i32 120, ; 93
	i32 323, ; 94
	i32 52, ; 95
	i32 44, ; 96
	i32 119, ; 97
	i32 233, ; 98
	i32 321, ; 99
	i32 239, ; 100
	i32 81, ; 101
	i32 136, ; 102
	i32 275, ; 103
	i32 220, ; 104
	i32 8, ; 105
	i32 73, ; 106
	i32 303, ; 107
	i32 155, ; 108
	i32 290, ; 109
	i32 154, ; 110
	i32 92, ; 111
	i32 285, ; 112
	i32 45, ; 113
	i32 318, ; 114
	i32 306, ; 115
	i32 289, ; 116
	i32 109, ; 117
	i32 202, ; 118
	i32 129, ; 119
	i32 25, ; 120
	i32 210, ; 121
	i32 72, ; 122
	i32 55, ; 123
	i32 46, ; 124
	i32 327, ; 125
	i32 185, ; 126
	i32 234, ; 127
	i32 22, ; 128
	i32 248, ; 129
	i32 86, ; 130
	i32 43, ; 131
	i32 160, ; 132
	i32 71, ; 133
	i32 261, ; 134
	i32 3, ; 135
	i32 42, ; 136
	i32 63, ; 137
	i32 16, ; 138
	i32 53, ; 139
	i32 330, ; 140
	i32 284, ; 141
	i32 105, ; 142
	i32 289, ; 143
	i32 282, ; 144
	i32 245, ; 145
	i32 34, ; 146
	i32 158, ; 147
	i32 85, ; 148
	i32 32, ; 149
	i32 12, ; 150
	i32 51, ; 151
	i32 56, ; 152
	i32 265, ; 153
	i32 36, ; 154
	i32 181, ; 155
	i32 305, ; 156
	i32 283, ; 157
	i32 218, ; 158
	i32 35, ; 159
	i32 58, ; 160
	i32 292, ; 161
	i32 252, ; 162
	i32 188, ; 163
	i32 175, ; 164
	i32 17, ; 165
	i32 286, ; 166
	i32 204, ; 167
	i32 164, ; 168
	i32 318, ; 169
	i32 251, ; 170
	i32 184, ; 171
	i32 177, ; 172
	i32 278, ; 173
	i32 324, ; 174
	i32 153, ; 175
	i32 274, ; 176
	i32 259, ; 177
	i32 322, ; 178
	i32 220, ; 179
	i32 29, ; 180
	i32 52, ; 181
	i32 320, ; 182
	i32 279, ; 183
	i32 5, ; 184
	i32 304, ; 185
	i32 269, ; 186
	i32 273, ; 187
	i32 225, ; 188
	i32 290, ; 189
	i32 217, ; 190
	i32 236, ; 191
	i32 85, ; 192
	i32 278, ; 193
	i32 61, ; 194
	i32 112, ; 195
	i32 57, ; 196
	i32 334, ; 197
	i32 265, ; 198
	i32 99, ; 199
	i32 19, ; 200
	i32 229, ; 201
	i32 111, ; 202
	i32 101, ; 203
	i32 102, ; 204
	i32 302, ; 205
	i32 104, ; 206
	i32 282, ; 207
	i32 71, ; 208
	i32 38, ; 209
	i32 32, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 205, ; 213
	i32 308, ; 214
	i32 9, ; 215
	i32 123, ; 216
	i32 46, ; 217
	i32 219, ; 218
	i32 186, ; 219
	i32 9, ; 220
	i32 43, ; 221
	i32 4, ; 222
	i32 266, ; 223
	i32 312, ; 224
	i32 190, ; 225
	i32 307, ; 226
	i32 31, ; 227
	i32 138, ; 228
	i32 92, ; 229
	i32 93, ; 230
	i32 327, ; 231
	i32 207, ; 232
	i32 49, ; 233
	i32 141, ; 234
	i32 112, ; 235
	i32 140, ; 236
	i32 174, ; 237
	i32 235, ; 238
	i32 115, ; 239
	i32 301, ; 240
	i32 283, ; 241
	i32 157, ; 242
	i32 76, ; 243
	i32 79, ; 244
	i32 255, ; 245
	i32 37, ; 246
	i32 277, ; 247
	i32 193, ; 248
	i32 239, ; 249
	i32 232, ; 250
	i32 64, ; 251
	i32 138, ; 252
	i32 15, ; 253
	i32 116, ; 254
	i32 271, ; 255
	i32 280, ; 256
	i32 227, ; 257
	i32 48, ; 258
	i32 70, ; 259
	i32 80, ; 260
	i32 126, ; 261
	i32 94, ; 262
	i32 121, ; 263
	i32 287, ; 264
	i32 26, ; 265
	i32 248, ; 266
	i32 97, ; 267
	i32 28, ; 268
	i32 223, ; 269
	i32 325, ; 270
	i32 303, ; 271
	i32 149, ; 272
	i32 169, ; 273
	i32 4, ; 274
	i32 98, ; 275
	i32 33, ; 276
	i32 93, ; 277
	i32 270, ; 278
	i32 182, ; 279
	i32 21, ; 280
	i32 41, ; 281
	i32 170, ; 282
	i32 319, ; 283
	i32 241, ; 284
	i32 311, ; 285
	i32 187, ; 286
	i32 176, ; 287
	i32 255, ; 288
	i32 286, ; 289
	i32 280, ; 290
	i32 260, ; 291
	i32 2, ; 292
	i32 134, ; 293
	i32 111, ; 294
	i32 183, ; 295
	i32 331, ; 296
	i32 210, ; 297
	i32 328, ; 298
	i32 58, ; 299
	i32 95, ; 300
	i32 193, ; 301
	i32 310, ; 302
	i32 39, ; 303
	i32 221, ; 304
	i32 25, ; 305
	i32 94, ; 306
	i32 89, ; 307
	i32 99, ; 308
	i32 10, ; 309
	i32 87, ; 310
	i32 100, ; 311
	i32 267, ; 312
	i32 178, ; 313
	i32 287, ; 314
	i32 212, ; 315
	i32 194, ; 316
	i32 307, ; 317
	i32 7, ; 318
	i32 252, ; 319
	i32 302, ; 320
	i32 209, ; 321
	i32 188, ; 322
	i32 88, ; 323
	i32 247, ; 324
	i32 154, ; 325
	i32 306, ; 326
	i32 33, ; 327
	i32 116, ; 328
	i32 82, ; 329
	i32 20, ; 330
	i32 11, ; 331
	i32 162, ; 332
	i32 3, ; 333
	i32 198, ; 334
	i32 314, ; 335
	i32 185, ; 336
	i32 183, ; 337
	i32 84, ; 338
	i32 291, ; 339
	i32 64, ; 340
	i32 316, ; 341
	i32 274, ; 342
	i32 143, ; 343
	i32 298, ; 344
	i32 256, ; 345
	i32 157, ; 346
	i32 192, ; 347
	i32 41, ; 348
	i32 117, ; 349
	i32 179, ; 350
	i32 211, ; 351
	i32 310, ; 352
	i32 263, ; 353
	i32 131, ; 354
	i32 75, ; 355
	i32 66, ; 356
	i32 336, ; 357
	i32 320, ; 358
	i32 172, ; 359
	i32 297, ; 360
	i32 215, ; 361
	i32 143, ; 362
	i32 106, ; 363
	i32 151, ; 364
	i32 70, ; 365
	i32 156, ; 366
	i32 191, ; 367
	i32 178, ; 368
	i32 121, ; 369
	i32 127, ; 370
	i32 0, ; 371
	i32 315, ; 372
	i32 152, ; 373
	i32 238, ; 374
	i32 141, ; 375
	i32 225, ; 376
	i32 312, ; 377
	i32 20, ; 378
	i32 14, ; 379
	i32 135, ; 380
	i32 75, ; 381
	i32 59, ; 382
	i32 228, ; 383
	i32 167, ; 384
	i32 168, ; 385
	i32 196, ; 386
	i32 15, ; 387
	i32 74, ; 388
	i32 6, ; 389
	i32 23, ; 390
	i32 250, ; 391
	i32 204, ; 392
	i32 209, ; 393
	i32 91, ; 394
	i32 313, ; 395
	i32 1, ; 396
	i32 136, ; 397
	i32 251, ; 398
	i32 273, ; 399
	i32 134, ; 400
	i32 69, ; 401
	i32 146, ; 402
	i32 322, ; 403
	i32 291, ; 404
	i32 242, ; 405
	i32 184, ; 406
	i32 88, ; 407
	i32 96, ; 408
	i32 232, ; 409
	i32 237, ; 410
	i32 317, ; 411
	i32 31, ; 412
	i32 206, ; 413
	i32 45, ; 414
	i32 246, ; 415
	i32 191, ; 416
	i32 173, ; 417
	i32 208, ; 418
	i32 211, ; 419
	i32 109, ; 420
	i32 158, ; 421
	i32 35, ; 422
	i32 22, ; 423
	i32 174, ; 424
	i32 114, ; 425
	i32 57, ; 426
	i32 271, ; 427
	i32 338, ; 428
	i32 144, ; 429
	i32 118, ; 430
	i32 120, ; 431
	i32 110, ; 432
	i32 213, ; 433
	i32 139, ; 434
	i32 219, ; 435
	i32 187, ; 436
	i32 54, ; 437
	i32 105, ; 438
	i32 323, ; 439
	i32 201, ; 440
	i32 197, ; 441
	i32 198, ; 442
	i32 133, ; 443
	i32 285, ; 444
	i32 276, ; 445
	i32 264, ; 446
	i32 329, ; 447
	i32 242, ; 448
	i32 200, ; 449
	i32 159, ; 450
	i32 293, ; 451
	i32 308, ; 452
	i32 229, ; 453
	i32 163, ; 454
	i32 132, ; 455
	i32 264, ; 456
	i32 161, ; 457
	i32 321, ; 458
	i32 253, ; 459
	i32 295, ; 460
	i32 140, ; 461
	i32 276, ; 462
	i32 272, ; 463
	i32 169, ; 464
	i32 199, ; 465
	i32 208, ; 466
	i32 214, ; 467
	i32 281, ; 468
	i32 40, ; 469
	i32 240, ; 470
	i32 81, ; 471
	i32 56, ; 472
	i32 37, ; 473
	i32 97, ; 474
	i32 166, ; 475
	i32 172, ; 476
	i32 277, ; 477
	i32 82, ; 478
	i32 216, ; 479
	i32 98, ; 480
	i32 30, ; 481
	i32 159, ; 482
	i32 203, ; 483
	i32 18, ; 484
	i32 127, ; 485
	i32 119, ; 486
	i32 236, ; 487
	i32 267, ; 488
	i32 249, ; 489
	i32 203, ; 490
	i32 269, ; 491
	i32 165, ; 492
	i32 299, ; 493
	i32 244, ; 494
	i32 206, ; 495
	i32 339, ; 496
	i32 266, ; 497
	i32 257, ; 498
	i32 170, ; 499
	i32 16, ; 500
	i32 144, ; 501
	i32 314, ; 502
	i32 194, ; 503
	i32 125, ; 504
	i32 118, ; 505
	i32 38, ; 506
	i32 115, ; 507
	i32 47, ; 508
	i32 142, ; 509
	i32 117, ; 510
	i32 34, ; 511
	i32 175, ; 512
	i32 301, ; 513
	i32 95, ; 514
	i32 53, ; 515
	i32 258, ; 516
	i32 129, ; 517
	i32 153, ; 518
	i32 24, ; 519
	i32 161, ; 520
	i32 235, ; 521
	i32 148, ; 522
	i32 104, ; 523
	i32 89, ; 524
	i32 223, ; 525
	i32 60, ; 526
	i32 142, ; 527
	i32 294, ; 528
	i32 298, ; 529
	i32 100, ; 530
	i32 5, ; 531
	i32 13, ; 532
	i32 122, ; 533
	i32 135, ; 534
	i32 28, ; 535
	i32 309, ; 536
	i32 337, ; 537
	i32 190, ; 538
	i32 72, ; 539
	i32 233, ; 540
	i32 24, ; 541
	i32 221, ; 542
	i32 294, ; 543
	i32 262, ; 544
	i32 259, ; 545
	i32 326, ; 546
	i32 137, ; 547
	i32 214, ; 548
	i32 230, ; 549
	i32 168, ; 550
	i32 192, ; 551
	i32 263, ; 552
	i32 305, ; 553
	i32 101, ; 554
	i32 123, ; 555
	i32 234, ; 556
	i32 180, ; 557
	i32 163, ; 558
	i32 167, ; 559
	i32 237, ; 560
	i32 39, ; 561
	i32 195, ; 562
	i32 313, ; 563
	i32 17, ; 564
	i32 171, ; 565
	i32 326, ; 566
	i32 325, ; 567
	i32 137, ; 568
	i32 150, ; 569
	i32 226, ; 570
	i32 155, ; 571
	i32 130, ; 572
	i32 19, ; 573
	i32 65, ; 574
	i32 177, ; 575
	i32 292, ; 576
	i32 202, ; 577
	i32 147, ; 578
	i32 173, ; 579
	i32 47, ; 580
	i32 207, ; 581
	i32 333, ; 582
	i32 212, ; 583
	i32 79, ; 584
	i32 61, ; 585
	i32 106, ; 586
	i32 261, ; 587
	i32 216, ; 588
	i32 49, ; 589
	i32 247, ; 590
	i32 330, ; 591
	i32 258, ; 592
	i32 14, ; 593
	i32 179, ; 594
	i32 68, ; 595
	i32 171, ; 596
	i32 222, ; 597
	i32 226, ; 598
	i32 335, ; 599
	i32 189, ; 600
	i32 78, ; 601
	i32 231, ; 602
	i32 108, ; 603
	i32 215, ; 604
	i32 257, ; 605
	i32 67, ; 606
	i32 63, ; 607
	i32 27, ; 608
	i32 160, ; 609
	i32 224, ; 610
	i32 10, ; 611
	i32 195, ; 612
	i32 11, ; 613
	i32 300, ; 614
	i32 78, ; 615
	i32 126, ; 616
	i32 83, ; 617
	i32 181, ; 618
	i32 66, ; 619
	i32 293, ; 620
	i32 107, ; 621
	i32 65, ; 622
	i32 128, ; 623
	i32 122, ; 624
	i32 77, ; 625
	i32 272, ; 626
	i32 262, ; 627
	i32 334, ; 628
	i32 8, ; 629
	i32 230, ; 630
	i32 2, ; 631
	i32 44, ; 632
	i32 275, ; 633
	i32 156, ; 634
	i32 128, ; 635
	i32 260, ; 636
	i32 23, ; 637
	i32 133, ; 638
	i32 218, ; 639
	i32 249, ; 640
	i32 329, ; 641
	i32 338, ; 642
	i32 311, ; 643
	i32 29, ; 644
	i32 217, ; 645
	i32 62, ; 646
	i32 197, ; 647
	i32 90, ; 648
	i32 87, ; 649
	i32 148, ; 650
	i32 199, ; 651
	i32 36, ; 652
	i32 86, ; 653
	i32 238, ; 654
	i32 324, ; 655
	i32 319, ; 656
	i32 180, ; 657
	i32 50, ; 658
	i32 6, ; 659
	i32 90, ; 660
	i32 331, ; 661
	i32 21, ; 662
	i32 162, ; 663
	i32 96, ; 664
	i32 50, ; 665
	i32 113, ; 666
	i32 254, ; 667
	i32 130, ; 668
	i32 76, ; 669
	i32 27, ; 670
	i32 231, ; 671
	i32 297, ; 672
	i32 253, ; 673
	i32 7, ; 674
	i32 205, ; 675
	i32 196, ; 676
	i32 110, ; 677
	i32 254, ; 678
	i32 240 ; 679
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
