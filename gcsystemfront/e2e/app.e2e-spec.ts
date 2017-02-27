import { GcsystemfrontPage } from './app.po';

describe('gcsystemfront App', function() {
  let page: GcsystemfrontPage;

  beforeEach(() => {
    page = new GcsystemfrontPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
