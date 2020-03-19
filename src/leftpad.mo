import Prim "mo:prim";

module {
    // Pads the given `Text` with spaces until it has `padded` characters. 
    // Just returns the given `Text` if it has more than `padded` characters. 
    public func leftPad(text: Text, padded: Nat): Text {
        let len: Nat = text.len();
        if (len < padded) {
            var padding = "";
            while(padding.len() < padded - len) {
                padding #= " "
            };
            padding # text
        } else {
            text
        }
    };

    // Like `leftPad` but allows customizing what character is used for the padding.
    public func leftPadWith(text: Text, padded: Nat, char: Char): Text {
        let len: Nat = text.len();
        if (len < padded) {
            var padding = "";
            while(padding.len() < padded - len) {
                padding #= Prim.charToText(char)
            };
            padding # text
        } else {
            text
        }
    }
}