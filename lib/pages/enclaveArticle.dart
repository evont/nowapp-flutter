import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nowapp_flutter/model/EnclaveDetailModel.dart';
import 'package:html/dom.dart' as dom;
import 'package:nowapp_flutter/util/Api.dart';

class EnclaveArticlePage extends StatefulWidget {
  final int articleId;
  EnclaveArticlePage({Key key, @required this.articleId}) : super(key: key);
  
  @override
  _EnclaveArticleFutureState createState() => _EnclaveArticleFutureState();
}

class _EnclaveArticleFutureState extends State<EnclaveArticlePage> {
  Future future;
  @override
  void initState() {
    super.initState();
    future = loadData();
  }

  Future<EnclaveDetailModel> loadData() async {
    // Map<String, dynamic> query = { 'id': widget.articleId };
    // final data = await ApiClient.request(Api.ENCLAVE_ARTICLE, query);
    EnclaveDetailModel article = new EnclaveDetailModel.fromJson({
"status": "success",
"code": 200,
"message": "查询文章成功",
"result": {
"artId": 21981,
"artTitle": "我想要相信， 是死亡之外的某些东西毁了你",
"artType": "1",
"artContent": "<h4>《不定的时刻：莱维诗选》是意大利作家、大屠杀见证者普里莫·莱维的诗歌结集，共收录莱维毕生写作的84首诗歌。在这本诗集中，莱维以饱满的感情，锻造了堪称经典的<strong>奥斯维辛诗歌</strong>——它们将真、善、美融为一体，既以最深邃的目光审视了一个幸存者、见证者乃至一群受难者的苦难心灵，又以最凝练的方式展现了这位20世纪文学巨擘<strong>对犹太人大屠杀的记忆与反思</strong>。此外，莱维也思考人生、关注自然，展现出他文学的另一面。</h4><blockquote><p>他的诗歌击败了西奥多·阿多诺的宣言——“在奥斯维辛之后写诗是野蛮的”。</p><p style=\"text-align: right;\">——《巴黎评论》</p></blockquote><p><img src=\"https://photo.enclavebooks.cn/20181207/36862978063279861506.jpg\" title=\"36862978063279861506.jpg\" _src=\"https://photo.enclavebooks.cn/20181207/36862978063279861506.jpg\" alt=\"primo-levi.jpg\"/></p><h3>- 普里莫·莱维 -</h3><p>意大利犹太人，作家，化学家，奥斯维辛174517号囚犯。</p><p>1919年，莱维生于意大利都灵；1943年，他因参与反法西斯运动被捕，后被遣送至集中营。战争结束后，他回到故乡都灵生活。在此后的人生中，他从事工业化学这一行当30年，同时作为一位作家，写作了“<strong>奥斯维辛三部曲</strong>”（《这是不是个人》《休战》《被淹没与被拯救的》），以及其他建基于其化学家身份和大屠杀幸存者经历的小说、散文和诗歌作品。1987年4月11日，莱维从他出生的房子坠落身亡。</p><hr/><h3>幸存者</h3><h5>——致B. V. [1]</h5><h5>自那时起，在不定的时刻，</h5><section>自那时起，在不定的时刻，</section><section>那痛苦回返：</section><section>直到它能找到人来倾听，</section><section>我里面的这颗心燃起火。</section><p class=\"emptyPara\"><br/></p><section>又一次他看见同伴的脸</section><section>阴沉地显现于最初的光，</section><section>灰暗地笼罩在水泥灰中，</section><section>在迷雾中如此模糊，</section><section>在不安的睡眠中染着死亡之色：</section><section>夜里，在梦的重负下</section><section>他们的下巴翕动，</section><section>咂巴着一块不存在的萝卜。</section><section>“退后，离开这儿，被淹没的人，</section><section>走开。我不曾侵夺过任何人，</section><section>不曾抢过任何人的面包。</section><section>没有人替我死去。没有人。</section><section>返回你们的雾中。这不是我的错，</section><section>要是我活着并呼吸，又吃又喝又睡和穿衣。”[2]</section><h5>1984 年 2 月 4 日</h5><h5>注：</h5><h5>[1]B. V. 指布鲁诺·瓦萨里（Bruno Vasari），他是“被驱逐者协会都灵分会”主席。瓦萨里曾在1945年出版了关于毛特豪森集中营的回忆录《死亡野营》，他认为集中营幸存者之所以能幸存，并非靠狡猾和残忍，而是靠道德的力量。而莱维在其著作《被淹没的与被拯救的》中表达了不同的观点：最好的人都死去了，不好的人却活了下来。</h5><h5>[2]参看但丁《神曲·地狱篇》第三十三篇第一百四十一节：“我相信你在欺骗我，因为勃兰加杜利亚没有死；他还在吃、喝、睡觉和穿衣”。（朱维基译）<br/></h5><p class=\"emptyPara\"><br/></p><h3>- 在所有文明中，<br/></h3><p>即使是无文字的文明，有许多人，或有名或无名，自感需要用诗歌表达自身并委身其中，于是他们分泌出诗的物质，对自己、邻人和宇宙说话。这些诗的物质，或浓烈或黯淡，或短暂或长久。<strong>诗歌必定产生于散文之前。</strong>我们谁不曾写过诗呢？</p><p>我是一个人。我也会在“不定的时刻”，屈服于这种冲动，仿佛是遗传基因使然。在某些时候，较之于散文，诗歌更能理想地表现思想或形象。我说不出为何，也从不为此挂心：诗学理论我所知寥寥，他人的诗歌我亦涉猎不多，我不信仰艺术之神圣，也不认为我的这些诗有多好。我只能向未来的读者保证，这些诗都是我的产物，<strong>在罕有的时刻（平均每年不过一次），它们渐渐地自然成形，使我理性的另一半感到新奇不已。</strong></p><p style=\"text-align: right;\">普里莫·莱维</p><h5 style=\"text-align: right;\">1984年</h5><p><img src=\"https://photo.enclavebooks.cn/20190131/7224162217109658321.jpg\" title=\"7224162217109658321.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/7224162217109658321.jpg\" alt=\" Martine Franck View profile MOROCCO. Agadir. Beach run by Club Med..jpg\"/></p><h6>Martine Franck MOROCCO. Agadir. Beach run by Club Med.</h6><hr/><h3>1944年2月25日 [1]</h3><section>我想要相信，</section><section>是死亡之外的某些东西毁了你。</section><section>我想描述那种力量，</section><section>那时我们曾凭靠它来渴望</section><section>（我们已淹没）</section><section>渴望能再次一起</section><section>自由行走在日光下。</section><h5>注：</h5><h5>[1]莱维研究专家汤姆森（Thompson）称，这是诗人悄悄写给芳达·玛斯托（Vanda Maestro）的一首情诗。芳达·玛斯托曾在都灵大学学习化学，与莱维一同被捕。在被运往奥斯威辛集中营的路上，莱维与她坠入爱河。1944年10月30日，她死于奥斯威辛集中营毒气室。</h5><h3>歌唱</h3><section>……可当我们开始唱起</section><section>那些美好、愚蠢的歌，</section><section>仿佛恒常事今又再行，</section><section>万事万物重回从前。</section><p class=\"emptyPara\"><br/></p><section>一天只是一天：</section><section>七天组成一周。</section><section>杀戮，于我们恍若恶事；</section><section>死亡，已然遥远。</section><p class=\"emptyPara\"><br/></p><section>岁月匆匆流逝，</section><section>可仍有如此多在我们面前！</section><section>我们重又变回年轻人：</section><section>不是烈士，不是恶徒，不是圣人。</section><p class=\"emptyPara\"><br/></p><section>只要我们开口唱，</section><section>凡此种种就会走进脑海；</section><section>但它们像云一样，</section><section>难以描述。</section><h5>1946 年 1 月 3 日</h5><h3>周一</h3><section>有什么比一列火车更悲哀？</section><section>它必须按时离开，</section><section>只有一种声音，</section><section>只走一条路线。</section><section>没什么比一列火车更悲哀了。</section><p class=\"emptyPara\"><br/></p><section>或许一匹拉车的马除外。</section><section>套在两车杆间，</section><section>甚至不得旁顾。</section><section>它的一生就是行走。</section><p class=\"emptyPara\"><br/></p><section>而一个人呢？一个人不悲哀吗？</section><section>倘若他长久活在孤独中，</section><section>倘若他相信时间已终结，</section><section>一个人也是个悲哀的东西。</section><h5>1946 年 1 月 17 日</h5><h6><img src=\"https://photo.enclavebooks.cn/20190131/59000182398456155072.jpg\" title=\"59000182398456155072.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/59000182398456155072.jpg\" alt=\" Bruno Barbey View profile POLAND. Auschwitz. 1967. .jpg\"/> 奥斯维辛集中营 | Bruno Barbey POLAND. Auschwitz. 1967. </h6><h3>弗索利的日落 [1]</h3><section>我知道一去不返意味着什么。</section><section>透过铁丝网</section><section>我看见太阳落下并消陨；</section><section>我感到自己的肉身</section><section>被老诗人的诗句撕裂：</section><section>“太阳落下了还能再升起：</section><section>而我们，一旦短暂的光亮逝去，</section><section>只能在无尽的暗夜里永久沉睡。”</section><h5>1946 年 2 月 7 日</h5><h5>注：</h5><h5>[1] 弗索利（Fossoli），在意大利中部城市卡尔皮（Carpi）附近，纳粹德国建立的囚犯转运营，莱维曾从这里被转运至奥斯威辛集中营。</h5><h3>女巫 [1]</h3><section>长时间在毯子底下</section><section>她把蜡紧紧捂在胸前，</section><section>直到它变得柔软且温暖。</section><section>而后她起身，温柔而仔细地</section><section>用一只多情而耐心的手</section><section>为她心中的男人</section><section>雕刻出鲜活的肖像。</section><section>完成后，她将肖像</section><section>与橡树叶葡萄树叶橄榄树叶一起</section><section>投入火中，让火吞噬。</section><p class=\"emptyPara\"><br/></p><section>她感到自己将痛苦而死，</section><section>因为咒语起效了。</section><section>唯有此刻她才能哭。</section><h5>阿维利亚纳，1946年3月23日。</h5><h5>注：</h5><h5>[1] 这首诗取材于莱维的一位女助手菲莉丝·芳提诺（Felice Fantino）所讲的智慧女人的故事，这样的故事流传于皮埃蒙特乡村。</h5><h3>阿维利亚纳 [1]</h3><section>天可怜见那些辜负月圆的人，</section><section>一月仅有一次月圆。</section><section>可恨这乡村，</section><section>可恨这愚蠢的圆月</section><section>平静祥和地照着</section><section>就好像你在我身边。</section><p class=\"emptyPara\"><br/></p><section>……甚至还有一只夜莺，</section><section>仿佛从上世纪的书里飞出；</section><section>可我把它赶跑了，</section><section>远远地，赶到水沟另一边：</section><section>它放声歌唱而我却子然一身，</section><section>着实令人难以承受。</section><section>一群萤火虫，我任其飞舞</section><section>（它们聚集在小路上闪烁）：</section><section>并非因为你们名字相似，[2]</section><section>而是由于这小生灵如此温柔可人</section><section>让所有烦忧烟消云散。</section><section>如果有一天我们想分离，</section><section>或有一天我们想结婚，</section><section>我希望日期落在七月，</section><section>萤火虫无处不在，</section><section>就像今晚这样，当你不在我身边。</section><h5>1946 年 6 月 28 日</h5><h5>注：</h5><h5>[1]这是莱维与后来的妻子露西娅约会期间写给她的诗。阿维利亚纳（Avigliana），都灵省的一个市镇，莱维曾在此工作。</h5><h5>[2]莱维妻子的名字“露西娅”（Lucia）与意大利语中的“萤火虫”（Lucciole）发音相似。</h5><p><img src=\"https://photo.enclavebooks.cn/20190131/7444539117116185574.jpg\" title=\"7444539117116185574.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/7444539117116185574.jpg\" alt=\" Elliott Erwitt View profile AFGHANISTAN. Herat. 1977..jpg\"/></p><h6>Elliott Erwitt. Herat. 1977.</h6><h3>致阿道夫·艾希曼[1]</h3><section>风自由不羁穿行于我们的原野，</section><section>大海生生不息永恒拍打我们的沙滩。</section><section>人肥沃土地，土地予人花与果：</section><section>他活在劳苦与喜乐中；他盼望，恐惧，生养众多。</section><p class=\"emptyPara\"><br/></p><section>……而你来了，我们的宝贵敌人，</section><section>遭弃绝的造物，被死亡包围的人。</section><section>如今你还能说什么，在我们的集会前？</section><section>你要对神起誓？何种神？</section><section>你要欢喜地跳进坟墓？</section><section>或你要到最后，像个勤奋工作的人，</section><section>叹息生命太短，而艺术太长，</section><section>惋惜你的工作未完成，</section><section>一千三百万人依旧存活？</section><p class=\"emptyPara\"><br/></p><section>死亡之子，我们不愿你死。</section><section>愿你比活过的人活得更长：</section><section>愿你无眠地活过五百万个黑夜，</section><section>愿你每夜被所有人的苦难造访，他们曾看见</section><section>大门在身后关闭，挡住了回去的路，</section><section>黑暗四处弥漫，空气中填满死亡。</section><h5>1960年7月20日</h5><h5>注：</h5><h5>[1] 阿道夫·艾希曼（Adolf Eichmann，1906—1962年），纳粹德国高官，也是在犹太人大屠杀中执行“最终方案”的主要负责者，被称为“死刑执行者”。1960年5月11日在阿根廷被逮捕，并被秘密运至以色列。1961年2月11日艾希曼于耶路撒冷受审。同年12月艾希曼被判处有罪，1962年6月1日艾希曼被处以绞刑。</h5><h3>上岸</h3><section>幸福的是抵达港口的人，</section><section>将大海和风暴抛在身后，</section><section>他的梦已死或从未诞生；</section><section>坐在一家不来梅啤酒馆，</section><section>在炉旁饮酒，心绪平静。</section><section>幸福的是仿佛已熄火焰的人，</section><section>幸福的是如同河口沙砾的人，</section><section>他放下重担，擦擦额头，</section><section>在路边歇息。</section><section>他无所惧无所望无所盼，</section><section>只是定睛凝望落日。</section><h5>1964 年 9 月 10 日</h5><h3>普林尼 [1]</h3><section>别拦我，朋友们，让我起航。</section><section>我不会走远：只是去另一个岸；</section><section>我想近距离观察那黑云，</section><section>它形似松树，正从维苏威山上升起，</section><section>我想找到这奇异之光的源头。</section><section>侄子，你不想随我同去？好，就待在这儿做研究。</section><section>誊写昨天我交给你的笔记。</section><section>你无须害怕灰烬：灰烬摞灰烬，</section><section>我们本是灰烬，还记得伊壁鸠鲁的话吗？</section><section>赶快，备好船，天已昏黑，</section><section>夜晚落在正午，一种从未见过的迹象。[2]</section><section>别担心，妹妹，我谨慎且专业，</section><section>光阴压弯了我脊背，但并未虚掷。</section><section>不久后我定会回来，只须给我时间</section><section>渡过海，观察此现象后返回，</section><section>明日为我的书写下新的一章。</section><section>我希望，我的书将长存几个世纪，</section><section>纵使我这副老皮囊里不停旋转的原子</section><section>溶解于宇宙的涡流，</section><section>或重生于一只鹰、一个女孩、一朵花中。</section><section>水手们，听我的：推船出海。</section><h5>1978 年 5 月 23 日</h5><h5>注：</h5><h5>[1]普林尼（Plinio），这里指老普林尼，其侄子为小普林尼。生于公元23年（一说24年），古罗马百科全书式的作家，以其所著《自然史》而著称。公元79年8月24日，为获取维苏威火山爆发的第一手资料，他独自前往观察。肺部本来就不好的他吸入了过量的有毒气体，随即中毒身亡。</h5><h5>[2]指火山灰遮暗了中午的天空，宛如黑夜。</h5><h6><img src=\"https://photo.enclavebooks.cn/20190131/98128509061235776637.jpg\" title=\"98128509061235776637.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/98128509061235776637.jpg\" alt=\" Paolo Pellegrin View profile ITALY. Island of Stromboli. 1995..jpg\"/> 意大利岛上火山 | Paolo Pellegrin ITALY. Island of Stromboli. 1995.</h6><h3>去山谷</h3><section>四轮马车往山谷缓缓行进，</section><section>烟雾挂在树丛，苦涩地发蓝，</section><section>最后一只蜜蜂，徒然嗅着秋天的番红花；</section><section>崩塌的山石，淹在水中，无声地颤抖。</section><section>薄雾瞬时升起于落叶松林，仿佛受到召唤：</section><section>我追寻这薄雾，却徒劳无功，脚步沉重而蹒跚，</section><section>不久又将落雨：这个季节已走到尽头，</section><section>我们的半个世界蜿蜒走进冬天。</section><section>属于我们的所有季节行将结束：</section><section>我这尚未衰颓的身躯还会听从我多久？</section><section>生活与爱，为时已晚，</section><section>来不及凝望天空，理解这世界。</section><section>是时候俯身</section><section>走下山谷，沉默无言，</section><section>栖身于我们的烦忧之影。</section><h5>1979年9月5日</h5><h3>游击队员 [1]</h3><section>你们在哪里，所有山谷中的游击队员，</section><section>泰山，卷毛，老鹰，闪电，尤利西斯？[2]</section><section>很多安眠在庄严的墓地，</section><section>幸存的人今已鬓发苍苍</section><section>给他们的孙辈追述</section><section>在记忆日渐模糊的那个年代</section><section>他们如何打破德军封锁，</section><section>而昔日的战场如今升起了滑雪缆车。</section><section>一些人买卖地产，</section><section>其他人啃国家养老金</section><section>或在市政委员会中添了皱纹。</section><section>站起来，老伙计们：我们永无复员之时。</section><section>让我们重聚，返回深山，</section><section>脚步蹒跚，气喘吁吁，膝盖僵硬，</section><section>众多冬天堆积于我们脊背，</section><section>对于我们，小道将陡峭难行，</section><section>床铺硬邦邦，面包干硬。</section><section>我们将彼此对视，恍若陌生人，</section><section>满腹猜疑，暴躁易怒，面色阴郁。</section><section>一如当初，我们将格外警觉</section><section>以防敌人在破晓时突袭。</section><section>何种敌人？人人皆为自身的敌人，</section><section>每个人皆被自己的边界撕裂，</section><section>右手是左手的敌人。</section><section>站起来，老伙计们，你们自我的敌人：</section><section>我们的战争永无完结。</section><h5>1981 年 7 月 23 日</h5><h5>注：</h5><h5>[1] 原文为“Partigia”，是皮埃蒙特山区对“partigiano”的缩写，特指机动灵活、富有决断力的游击队员，莱维被捕前曾参加皮埃蒙特山区的游击队。写这首诗时，诗人已六十二岁，他召唤年老的游击队员加入一场新的战争，对抗岁月与他们分裂的自我，因为敌人不只在外部，也在内部，记忆与遗忘，仇恨与爱，彼此的战争永无止息。</h5><h5>[2]曾为游击队员的秘密代号。</h5><p><img src=\"https://photo.enclavebooks.cn/20190131/85886512055951560285.jpg\" title=\"85886512055951560285.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/85886512055951560285.jpg\" alt=\" Mark Power View profile POLAND. Oswiecim. Auschwitz concentration camp. January 1990..jpg\"/></p><h6> 奥斯威辛集中营 | Mark Power  POLAND. Oswiecim. Auschwitz concentration camp. January 1990.</h6><blockquote><p><span style=\"color: rgba(0, 0, 0, 0.9); text-align: justify;\">写作时，我找到了一种短暂的平静，感到自己又变成了一个人，像每个人一样，既非烈士，也非恶徒，也非圣人，</span><strong style=\"color: rgba(0, 0, 0, 0.9); text-align: justify;\">就像一个刚刚成家的人，面向未来而非过去</strong><span style=\"color: rgba(0, 0, 0, 0.9); text-align: justify;\">。</span><br/></p><p style=\"text-align: right;\"><span style=\"color: rgba(0, 0, 0, 0.9); text-align: justify;\">——普里莫·莱维</span></p></blockquote><p class=\"emptyPara\"><br/></p><h3>作品</h3><section>看，完成了：再也不碰它了。</section><section>手中的笔此刻多么沉重！</section><section>不久前它还那样轻盈，</section><section>如水银般鲜活：</section><section>我只须跟随它，</section><section>它指引我的手</section><section>就像明眼人引导盲人，</section><section>就像一个女人领你跳舞。</section><section>此刻停下，作品已完成，</section><section>精心打磨，臻于完满。</section><section>若拿走一个词</section><section>它就会裂开个窟窿流出血清。</section><section>若增加一个词</section><section>它就会突兀如一颗丑陋的瘤。</section><section>若变动一个词它就会刺耳</section><section>如音乐会上一只狗吠。</section><section>现在怎么办？如何放手？</section><section>每诞生一篇作品你就死去一点。</section><h5>1983 年 1 月 15 日</h5><h3>珍珠贝</h3><section>你，热血冲动，体形硕大，</section><section>对我的软体你所知多少</section><section>除了它们的味道？它们也能</section><section>感知冷与热，</section><section>海水中的纯净与杂质；</section><section>它们伸缩，遵循</section><section>内部无声的节奏。</section><section>它们饱餐时欢喜，饥饿时呼喊，</section><section>一如你，动如闪电的陌生人。</section><section>尽管我被禁闭于石质壳瓣中间，</section><section>我，一如你，也拥有记忆和感觉，</section><section>黏附在浅滩上，我是否占卜了天空？</section><section>我比你想象的更像你，</section><section>注定去隐藏秘密，</section><section>隐藏眼泪精子珍珠母和珍珠。</section><section>一如你，假如一块碎片损伤了我的外套膜，</section><section>我就日复一日地静静修补。</section><h5>1983 年 9 月 30 日</h5><h3>给我们</h3><section>给一些东西让我们摧毁，</section><section>一朵花，一个安静的角落，</section><section>一个教友，一个法官，</section><section>一座电话亭，</section><section>一个记者，一个叛徒，</section><section>一个敌对阵营的支持者，</section><section>一根灯柱，一个井盖，一个长凳。给一些东西让我们损毁，</section><section>一面石膏墙，蒙娜丽莎，</section><section>一片挡泥板，一座墓碑。</section><section>给一些东西让我们强暴，</section><section>一个腼腆的姑娘，</section><section>一个花坛，我们自己。</section><section>别小看我们：我们是先驱，是先知。</section><section>给我们一些东西来焚烧、攻击、粉碎、割裂、诽谤，</section><section>好让我们有存在感。</section><section>给我们一根警棍或一杆纳甘步枪。</section><section>给我们一支注射器或一辆铃木车。</section><section>怜悯我们。</section><h5>1984 年 4 月 30 日</h5><p><img src=\"https://photo.enclavebooks.cn/20190131/78308596428839058276.jpg\" title=\"78308596428839058276.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/78308596428839058276.jpg\" alt=\"guardian angel : Patti Smith.jpg\"/></p><h6>Guardian Angel | Photography by Patti Smith</h6><h3>一处山谷</h3><section>有一处山谷只有我知道。</section><section>要到那里不容易。</section><section>谷口有巨石，</section><section>树丛，隐秘的浅滩与湍流，</section><section>路上只有隐约的足迹。</section><section>大多数地图都没有标示；</section><section>是我独自一人探寻到路，</section><section>有许多年</section><section>我常常在其中迷路，</section><section>可这并非浪费时间。</section><section>我不知谁先到的那里，</section><section>也许有几个人，也许没有：</section><section>这没关系。</section><section>石壁上留有痕迹，</section><section>一些很美，可全都很神秘，</section><section>一些显然并非出自人之手。</section><section>谷底有山毛榉，桦树，</section><section>高处长着落叶松和冷杉</section><section>瘦削如常，当春天来临，</section><section>第一只土拨鼠欢腾，</section><section>春风窃取众树的花粉。</section><section>更高处有七片湖，</section><section>湖水一尘不染，</section><section>纯净，漆黑，冰凉，深邃。</section><section>在此高处植物</section><section>不再生长，但在山坳处</section><section>挺立着一棵坚强的树，</section><section>茂盛而青翠，</section><section>还不曾有人为它命名：</section><section>也许是《创世记》里的那棵树。</section><section>它四季开花又结果，</section><section>即使大雪压弯了树枝。</section><section>它的树干上带着古老的伤疤，</section><section>一滴苦涩的黑色树脂</section><section>滴下，万物俱忘。</section><h5>1984 年 10 月 29 日</h5><h3>白白死去之人的歌 [1]</h3><section>请坐下来谈判</section><section>如你们所愿，老谋深算的政客们。</section><section>我们会把你们围堵在华丽的宫殿，</section><section>让你们好吃好喝好睡，</section><section>好让你们讨论和谈判</section><section>我们和你们孩子的生命。</section><section>愿创世的一切智慧汇聚</section><section>赐福于你们的头脑，</section><section>引你们走出迷宫。</section><section>而我们会在外面的寒风中等待，</section><section>白白蒙难的死亡军团，</section><section>我们来自马恩河和卡西诺山[2]，</section><section>来自特雷布林卡，德莱顿和广岛[3]:</section><section>与我们一起的还有</section><section>死于麻风病与沙眼病的人，</section><section>布宜诺斯艾利斯的失踪者[4]，</section><section>柬埔寨的死者和埃塞俄比亚垂死的人[5]，</section><section>布拉格的谈判者，</section><section>加尔各答倒在血泊中的人[6]，</section><section>博洛尼亚被屠杀的无辜者[7]。</section><section>你们有祸了，倘若你们未达成协议：</section><section>我们将紧紧抱住你们不放。</section><section>我们不可战胜因为我们已被打败，</section><section>我们受不到伤害因为我们已死去：</section><section>我们嗤笑你们的导弹。</section><section>坐下来谈判</section><section>直到你们口干舌燥：</section><section>假如毁坏与羞耻不停止，</section><section>我们将用我们的腐败物溺死你们。</section><h5>1985 年 1 月 14 日</h5><h5>注：</h5><h5>[1]这首诗写于美国和苏联关于削减核武器的谈判期间。</h5><h5>[2]马恩河战役，发生于第一次世界大战期间，英法联军和德军共伤亡约五十万人；卡西诺山地之战，指1944年1-5月在意大利中部战役中盟军同德军展开的四次激战，交战双方共死亡约五万人。</h5><h5>[3]特雷布林卡集中营，纳粹德国修建的灭绝营，位于波兰东北部，约八十万犹太人在此遇害；德莱顿大轰炸，指1945年2月13日到15日两天内，英美联合空军对德莱顿的大轰炸，他们投掷了大量燃烧弹和烈性炸药，致使约三十万人死亡；广岛核爆，导致二十多万人遇难。</h5><h5>[4]1977年阿根廷发生军事政变，成立了军人独裁政府，该政权在其后的白色恐怖时期大肆逮捕异议人士，全国失踪者达三万人。</h5><h5>[5]柬埔寨在红色高棉统治时期，全国三分之一的人口被处决；1983年至1985年，埃塞俄比亚发生了大范围饥荒，超过四十万人死亡。</h5><h5>[6]指1946年8月16日发生在印度加尔各答的宗教大屠杀，印度教徒与穆斯林教徒互相杀戮。</h5><h5>[7]博洛尼亚大屠杀，指1944年发生在意大利博洛尼亚地区农村的纳粹大屠杀。</h5><p><img src=\"https://photo.enclavebooks.cn/20190131/91267218213452588311.jpg\" title=\"91267218213452588311.jpg\" _src=\"https://photo.enclavebooks.cn/20190131/91267218213452588311.jpg\" alt=\" Erich Hartmann View profile POLAND. Oswiecim. 1994. A display of artificial limbs at Auschwitz concentration camp..jpg\"/></p><h6> 奥斯威辛集中营里的假肢展览 | Erich Hartmann POLAND. Oswiecim. 1994.</h6><h3>基大利的歌 [1]</h3><section>你认不出我们了吗？</section><section>我们是“隔都”[2]的绵羊，</section><section>被修剪了千年，沦为受害者。</section><section>我们是裁缝、眷录员和合唱队指挥</section><section>凋萎在十字架的阴影下。</section><section>如今我们知道了森林里的路，</section><section>学会了射杀而我们却在靶子上。</section><section>若我不为我，谁人为我？</section><section>若不如此，如何？若非此时，何时？</section><section>我们的兄弟已升上天空</section><section>穿过索比堡和特雷布林卡[3]的焚烧炉，</section><section>他们在空中给自己掘一座坟墓。</section><section>只有我们少数人得以幸存</section><section>来纪念我们那些被淹没的人，</section><section>为复仇和见证。</section><section>若我不为我，谁人为我？</section><section>若不如此，如何？若非此时，何时？</section><section>我们是大卫的子孙，马萨达堡[4]的抵抗派。</section><section>我们每个人兜里揣着</section><section>打烂歌利亚头颅的石头。</section><section>兄弟们，离开死亡统治的欧洲：</section><section>我们将一同爬向那土地，</section><section>在他人中间重新成为人。[5]</section><section>若我不为我，谁人为我？</section><section>若不如此，如何？若非此时，何时？</section><h5>注：</h5><h5>[1]基大利（Gedale），莱维在小说《若非此时，何时》中虚构的一位犹太诗人歌手，组成了“基大利之队”。</h5><h5>[2]隔都（Ghetto），特指“犹太人隔离区”。</h5><h5>[3]索比堡（Sobibor）灭绝营，位于波兰卢布林地区索比堡村附近，建于1942年3月，约二十五万犹太人在此遇害。</h5><h5>[4]马萨达城堡（Masada），是两千多年前犹太人在罗马人的进攻下坚守的最后一座壁垒，抵抗失败后，城堡中的九百六十七名犹太人选择了集体自杀。马萨达之后，犹太遗民开始了在世界各地长达十九个世纪的流浪。</h5><h5>[5]参看以色列国歌《希望》中：“我们的心并没有死亡，两千年来唯一的希望：做个自由人再次回我的故乡”。</h5><h3>托付</h3><section>不要惊慌，倘若工作繁重。</section><section>我们需要你，因为你尚未倦怠。</section><section>你的感觉尚未麻木，仍能听到</section><section>自己脚下空洞的声响。</section><section>重新思考我们犯下的错：</section><section>在我们中间，曾有人</section><section>盲目地追寻，</section><section>如同被蒙上双眼的人反复勾画一幅草图，</section><section>有人像海盗一样起锚远航，</section><section>有人耗尽心力。</section><section>惶惑不安的你们，帮帮我们。试一试，尽管你们不安，</section><section>因为你们不安。看一看</section><section>我们的怀疑与信念</section><section>能否不再令你们反感和厌恶。</section><section>我们从未如此富足，可周围却</section><section>萦绕着不腐的恶魔，</section><section>它们饥饿难耐，伺机捕获。</section><section>如果你看到碎石废墟或</section><section>腐臭的垃圾场，不要害怕：是我们空着手将其清理</section><section>在我们像你们这样的年纪。</section><section>继续前进，尽你所能。我们</section><section>梳过彗星的鬃毛，</section><section>破译了创世的奥秘，</section><section>踏上了月球的沙地，</section><section>建造了奥斯维辛毁灭了广岛。</section><section>看：我们并非庸碌无为。</section><section>困惑的你们，肩起重担吧；</section><section>不要叫我们老师。</section><h5>1986 年 6 月 24 日</h5><h5>内容选自《不定的时刻：莱维诗选》，[意]普里莫·莱维 著，武忠明 译，三辉图书 | 中信出版集团，2018年10月。</h5><p><img src=\"https://photo.enclavebooks.cn/20190130/89003066582823334211.jpg\" title=\"89003066582823334211.jpg\" _src=\"https://photo.enclavebooks.cn/20190130/89003066582823334211.jpg\" alt=\"不定的时刻-立封图.jpg\"/></p><footer><hr/><p>题图： Contempory Jewish Center of Documentation. 当代犹太人史料文献中心 | Martine Franck  France. Paris. </p><p>责任编辑：丛琪</p></footer>",
"artThumb": "https://photo.enclavebooks.cn/enclave/photo/2019-01-31/10:30:09.jpg",
"sourceType": 0,
"contentType": null,
"artView": 99,
"collected": "0",
"readRecord": "0",
"commentCount": "0",
"footNote": "",
"artEditor": "普里莫·莱维",
"artAvatar": "https://photo.enclavebooks.cn/enclave/photo/2018-12-07/18:28:24.jpg",
"shareDescription": "我们不可战胜因为我们已被打败。",
"artTime": 1552354800,
"author": {
"id": 783,
"intro": "意大利犹太人，作家，化学家，奥斯维辛174517号囚犯。1919年，莱维出生于意大利都灵；1943年，他因参与反法西斯运动被捕，后被遣送至集中营。战争结束后，他回到故乡都灵生活。在此后的人生中，他从事工业化学这一行当30年，同时作为一位作家，写作了“奥斯维辛三部曲”（《这是不是个人》《休战》和《被淹没与被拯救的》），以及其他建基于其化学家身份和大屠杀幸存者经历的小说、散文和诗歌作品。1987年4月11日，莱维从他出生的房子坠落身亡。",
"isOwn": 0
}
}
});
    return article;
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return new FutureBuilder(
      builder: (context, AsyncSnapshot async) {
        if (async.connectionState == ConnectionState.active ||
            async.connectionState == ConnectionState.waiting) {
          return new Center(
            child: new CircularProgressIndicator(),
          );
        }
        if (async.connectionState == ConnectionState.done) {
          if (async.hasError) {
            return new Center(
              child: new Text('服务器错误，请稍后重试'),
            );
          } else if (async.hasData) {
            var result = async.data.result;
            var artTime = result.artTime;
            var _realTime = new DateTime.fromMillisecondsSinceEpoch(artTime * 1000);
            var formatedTime = '${_realTime.year}-${_realTime.month}-${_realTime.day} ${_realTime.hour}${_realTime.minute}';
            return new SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: new Text(result.artTitle, style: TextStyle( fontSize: 24, fontWeight: FontWeight.w500 )),
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: new Text(result.artEditor, style: TextStyle(color: Color(0xFF9c323e))),
                      ),
                      new Container(
                        child: new Text(formatedTime, style: TextStyle(color: Color(0xFFaaaaaa))),
                      ),
                    ],
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Html(
                      data: result.artContent,
                      defaultTextStyle: TextStyle( height: 1.2, fontSize: 16, fontWeight: FontWeight.w300 ),
                      // useRichText: true,
                      customRender: (node, children) {
                        if(node is dom.Element) {
                          switch(node.localName) {
                            case 'blockquote': return new Container(
                              margin: const EdgeInsets.only(top: 20, bottom: 20),
                              padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 0),
                              decoration: BoxDecoration(
                                border: Border(left: BorderSide(color: Color(0xFFaaaaaa), width: 4)),
                              ),
                              child: new Column(
                                children: children,
                              )
                            );
                            case 'h3': return DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF333333),
                                fontWeight: FontWeight.bold,
                              ),
                              child: new Container(
                                margin: EdgeInsets.only(top: 16),
                                child: Wrap(
                                  children: children,
                                )
                              ),
                            );
                            case 'h4': return new Container(
                              color: Color(0xFFF2F2F2),
                              padding: const EdgeInsets.all(10),
                              child: Wrap(
                                children: children,
                              )
                            );
                            case 'h5': return DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF3aaaaaa),
                                fontWeight: FontWeight.bold,
                              ),
                              child: Wrap(
                                children: children,
                              )
                            );
                            case 'hr': return new Container(
                              width: _width * 0.6,
                              margin: EdgeInsets.only(top: 20, bottom: 20, left:_width * 0.15),
                              child: new Divider(height: 2.0, color: Colors.black38),
                            );
                          }
                        }
                      },
                    ),
                  )
                ],
              ),
            );
          }
        }
      },
      future: future,
    );
  }
}