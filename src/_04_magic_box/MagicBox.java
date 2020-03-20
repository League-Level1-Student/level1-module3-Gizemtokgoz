package _04_magic_box;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

import javazoom.jl.decoder.JavaLayerException;

public class MagicBox extends JPanel implements Runnable, MouseListener {

	/*
	 * We are going to hide secrets within the magic box. When the user clicks on a
	 * secret place, stuff will happen.
	 * 
	 * 1. Make the frame respond to mouse clicks.
	 * 
	 * 2. When the mouse is clicked, use the Media Palace (read the code in the
	 * magic_box package) to play sounds, show images or speak.
	 * 
	 * 3. Choose 3 different locations on the background image.You can either use
	 * the mouse position, or the color of the image, then decide what action the
	 * Media Palace should take in each case. backgroundImage.getRGB(e.getX(),
	 * e.getY()) will give you the color of the current pixel.
	 */

	BufferedImage backgroundImage;
	MediaPalace.Song s;
	MediaPalace.Song r;

	@Override
	public void run() {
		try {
			loadBackgroundImage();
			createUI();
		} catch (Exception w) {
			System.err.println(w.getMessage());
		}
	}

	private void createUI() {
		JFrame frame = new JFrame("The Magic Box contains many secrets...");
		frame.add(this);
		setPreferredSize(new Dimension(backgroundImage.getWidth(), backgroundImage.getHeight()));
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		frame.addMouseListener(this);
	}

	private void loadBackgroundImage() throws Exception {
		String imageFile = "src/_04_magic_box/magic-box.jpg";
		try {
			backgroundImage = ImageIO.read(new File(imageFile));
		} catch (IOException e) {
			throw new Exception("Could not load image: " + imageFile);
		}
	}

	@Override
	public void paintComponent(Graphics g) {
		g.drawImage(backgroundImage, 0, 0, null);
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		MediaPalace palace = new MediaPalace();
		System.out.println(e.getX());
		System.out.println(e.getY());

		int x = e.getX();
		int y = e.getY();

		if (x > 174 && x < 293 && y > 292 && y < 759) {
			if (r != null) {
				r.stop();
			}
			s = palace.new Song("waterfall.mp3");
			s.play();
		}

		if (x > 279 && x < 403 && y > 147 && y < 240) {
			if (s != null) {
				s.stop();
			}
			palace.loadSound("squeek.wav").play();
		}
	}
	/*
	 * if (backgroundImage.equals(water2)) { playSoundFromInternet(String soundURL);
	 * } if (backgroundImage.equals(water3)) { playSoundFromInternet(String
	 * soundURL); } if (backgroundImage.equals(water4)) {
	 * playSoundFromInternet(String soundURL); }
	 */

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub

	}

}
