package _04_magic_box;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;

public class MagicBoxRunner {
	public static void main(String[] args) throws Exception {
		SwingUtilities.invokeLater(new MagicBox());
		JOptionPane.showMessageDialog(null, "click on different parts of the puzzle!");
	}
}
