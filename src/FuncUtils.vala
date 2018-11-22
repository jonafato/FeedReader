//	This file is part of FeedReader.
//
//	FeedReader is free software: you can redistribute it and/or modify
//	it under the terms of the GNU General Public License as published by
//	the Free Software Foundation, either version 3 of the License, or
//	(at your option) any later version.
//
//	FeedReader is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//	GNU General Public License for more details.
//
//	You should have received a copy of the GNU General Public License
//	along with FeedReader.  If not, see <http://www.gnu.org/licenses/>.

public class FeedReader.FuncUtils : GLib.Object {
	public delegate B MapFunction<A, B>(A value);

	public static Gee.List<B> map<A, B>(Gee.Collection<A> items, MapFunction<A, B> f)
	ensures (result.size == items.size)
	{
		var res = new Gee.ArrayList<B>();
		foreach(var item in items)
		{
			res.add(f(item));
		}
		return res;
	}
}
