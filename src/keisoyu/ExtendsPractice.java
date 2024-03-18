package keisoyu;

public class ExtendsPractice {
	public int id;
	public String content;
	public ExtendsPractice(int id, String content) {
	this.id = id;
	this.content = content;

    }

    @Override
    public String toString() {
        return "この単元では"+content+"を扱います。LessonIDは" + id + "です。";
    }
	}

//ここでtoStringメソッドをオーバーライドすることで処理が実現できた理由//
//Javaの全クラスObjectクラスを継承している。toStringはObjectクラスのメソッド//
//そのため今回RunクラスではExtendsPracticeを呼び出すときにidに50、contentに継承が入り出力されるようになっているため実現できた//