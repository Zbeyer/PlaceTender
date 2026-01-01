import Phaser from 'phaser';

export function createGame(containerId) {
    return new Phaser.Game({
        type: Phaser.AUTO,
        parent: containerId,
        width: 800,
        height: 600,
        scene: {
            preload() {
                this.load.image('phaserLogo', 'https://labs.phaser.io/assets/sprites/phaser3-logo.png');
            },
            create() {
                this.add.image(400, 300, 'phaserLogo');
            }
        }
    });
}
