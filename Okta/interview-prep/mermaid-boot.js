/* Shared Mermaid bootstrap for interview-prep pages */
(function () {
  if (typeof mermaid === 'undefined') {
    console.error('Mermaid library failed to load');
    return;
  }

  mermaid.initialize({
    startOnLoad: true,
    theme: 'base',
    securityLevel: 'loose',
    flowchart: {
      htmlLabels: false,
      curve: 'basis',
      padding: 16,
      nodeSpacing: 40,
      rankSpacing: 50
    },
    sequence: {
      mirrorActors: false,
      useMaxWidth: true
    },
    themeVariables: {
      background: '#ffffff',
      primaryColor: '#ede9fe',
      primaryTextColor: '#1c1917',
      primaryBorderColor: '#7c3aed',
      secondaryColor: '#f3f1ed',
      secondaryTextColor: '#1c1917',
      secondaryBorderColor: '#e5e2dc',
      tertiaryColor: '#ecfdf5',
      tertiaryTextColor: '#1c1917',
      lineColor: '#78716c',
      textColor: '#1c1917',
      mainBkg: '#ffffff',
      nodeBorder: '#7c3aed',
      clusterBkg: '#f3f1ed',
      clusterBorder: '#d6d3d1',
      titleColor: '#1c1917',
      actorBkg: '#ede9fe',
      actorBorder: '#7c3aed',
      actorTextColor: '#1c1917',
      actorLineColor: '#78716c',
      signalColor: '#44403c',
      signalTextColor: '#1c1917',
      labelBoxBkgColor: '#ede9fe',
      labelBoxBorderColor: '#7c3aed',
      labelTextColor: '#1c1917',
      noteBkgColor: '#fffbeb',
      noteTextColor: '#1c1917',
      noteBorderColor: '#d97706',
      fontFamily: 'Inter, system-ui, sans-serif',
      fontSize: '14px'
    }
  });
})();
