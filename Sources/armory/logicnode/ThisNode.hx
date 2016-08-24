package armory.logicnode;

import armory.trait.internal.NodeExecutor;

class ThisNode extends Node {

	public var target:iron.object.Object;

	public function new() {
		super();
	}

	public override function start(executor:NodeExecutor, parent:Node = null) {
		super.start(executor, parent);

		target = executor.object;
	}

	public static function create():ThisNode {
		var n = new ThisNode();
		return n;
	}
}
